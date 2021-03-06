FHORD7 ; HISC/REL/NCA/JH - Diet Order Utilities ; 3/10/16 3:13pm
 ;;5.5;DIETETICS;**8,41,42**;Jan 28, 2005;Build 1
 ;Patch #41 - adds timeout to incremental locks
 ;Patch #42 - adds setting of variable WARD
CUR ; Get Diet
 S FHZ115="P"_DFN D CHECK^FHOMDPA I FHDFN="" Q
 S X1=$G(^FHPT(FHDFN,"A",ADM,0)),FHORD=$P(X1,"^",2),X1=$P(X1,"^",3),(FHLD,FHOR,X,Y)=""
 Q:'FHORD  Q:'$D(^FHPT(FHDFN,"A",ADM,"DI",FHORD,0))
C2 ; Set FHOR & FHLD variables & Y = diet text
 S X=^FHPT(FHDFN,"A",ADM,"DI",FHORD,0),FHOR=$P(X,"^",2,6),FHLD=$P(X,"^",7),Y=""
 I FHLD'="" S FHDU=";"_$P(^DD(115.02,6,0),"^",3),%=$F(FHDU,";"_FHLD_":") S:%>0 Y=$P($E(FHDU,%,999),";",1) K % Q
C3 S Y="" F A1=1:1:5 S D3=$P(FHOR,"^",A1) I D3 S:Y'="" Y=Y_", " S Y=Y_$P(^FH(111,D3,0),"^",7)
 Q
NOW D NOW^%DTC S NOW=% Q
POST ; Generate bulletin
 S WRD=$P($G(^FHPT(FHDFN,"A",ADM,0)),"^",8) Q:WRD<1
 F FHXMKK=0:0 S FHXMKK=$O(^FH(119.6,WRD,2,"B",FHXMKK)) Q:FHXMKK'>0  D
 .S XMY(FHXMKK)=""
 Q:'$D(XMY)  S XMB="FHDIORD"
 D PATNAME^FHOMUTL I DFN="" Q
 S XMB(1)=$P(^DPT(DFN,0),"^",1),XMB(2)=$P(^FH(119.6,WRD,0),"^",1) D C3 S XMB(3)=Y
 S XMB(5)=$S($D(^DPT(DFN,.101)):^(.101),1:"unknown")
 S DTP=D1 D DTP^FH S XMB(4)=DTP D ^XMB K XMB,XMY,XMM,XMDT,FHXMKK Q
STR ; Store new diet order
 D ORD,NOW
 S X=FHORD_"^"_FHOR_"^"_FHLD_"^"_TYP_"^"_D1_"^"_$S(D2:D2,1:"")_"^"_DUZ_"^"_NOW,FHNOW=NOW
 S ^FHPT(FHDFN,"A",ADM,"DI",FHORD,0)=X S:COM'="" ^(1)=COM I FHWF D OE^FHORD71 S NOW=FHNOW
S0 G:'D2 S1 S X2=D2+.000001
S01 S A2=0 F A1=0:0 S A1=$O(^FHPT(FHDFN,"A",ADM,"AC",A1)) Q:A1<1!(A1'<X2)  S A2=A1
 I A2 S X2=A2,A2=$P(^FHPT(FHDFN,"A",ADM,"AC",A2,0),"^",2),X1=$P(^FHPT(FHDFN,"A",ADM,"DI",A2,0),"^",10) I X1'="",X1'>D2 G S01
 F A1=D1:0 S A1=$O(^FHPT(FHDFN,"A",ADM,"AC",A1)) Q:A1<1!(A1'<D2)  D SK
 S Z6=D1_"^"_FHORD D ACR^FHORD71
 I 'A2 D ORD S A2=FHORD,^FHPT(FHDFN,"A",ADM,"DI",FHORD,0)=FHORD_"^^^^^^X^^"_D2_"^^"_DUZ_"^"_NOW
 E  D OE3
 S Z6=D2_"^"_A2 D ACR^FHORD71 G S2
S1 I FHLD'="P" F A1=D1:0 S A1=$O(^FHPT(FHDFN,"A",ADM,"AC",A1)) Q:A1=""  D SK
 S Z6=D1_"^"_FHORD D ACR^FHORD71
S2 S X1="",A1=0 G S4
S3 S A1=$O(^FHPT(FHDFN,"A",ADM,"AC",A1)) G:A1="" S4 S X2=$P(^(A1,0),"^",2)
 I X2<1 D SK G S3
 I '$D(^FHPT(FHDFN,"A",ADM,"DI",X2,0)) D SK G S3
 S X2=^FHPT(FHDFN,"A",ADM,"DI",X2,0) I $P(X2,"^",2,8)'=$P(X1,"^",2,8) S X1=X2 G S3
 I $P(X1,"^",10)="" D SK G S3
 I $P(X2,"^",10),$P(X2,"^",10)'>$P(X1,"^",10) D SK G S3
 S X1=X2 G S3
S4 D OEU^FHORD71 S NOW=FHNOW K FHNOW G U1
UPD ; Get time & update diet
 D NOW I $D(ZTQUEUED),$D(Z6) I NOW<Z6 S NOW=Z6+.0002
U1 ; Update diet
 S FHZ115="P"_DFN D CHECK^FHOMDPA I FHDFN="" W "Could not find patient" Q
 S WARD=$G(^DPT(DFN,.1)) ;Patch #42
 S A1=0 F K=0:0 S K=$O(^FHPT(FHDFN,"A",ADM,"AC",K)) Q:K<1!(K>NOW)  S A1=K
 G:'A1 U3 S X1=$P(^FHPT(FHDFN,"A",ADM,"AC",A1,0),"^",2) G S2:X1<1,S2:'$D(^FHPT(FHDFN,"A",ADM,"DI",X1,0))
 S X2=$O(^FHPT(FHDFN,"A",ADM,"AC",A1)) S:X2<1 X2=""
U2 I $P(^FHPT(FHDFN,"A",ADM,0),"^",2,3)=X1_"^"_X2 Q
 S FHYES=0 I $P(^FHPT(FHDFN,"A",ADM,0),"^",2)=X1 S FHYES=1
 S $P(^FHPT(FHDFN,"A",ADM,0),"^",2,3)=X1_"^"_X2,X9="" I X1 S X9=$P(^FHPT(FHDFN,"A",ADM,"DI",X1,0),"^",8) I 'FHYES S EVT="D^O^"_X1 D ^FHORX
 I X9'="",X9'=$P(^FHPT(FHDFN,"A",ADM,0),"^",5) S $P(^(0),"^",5)=X9
 K X9 D ^FHORD72 K FHYES Q
U3 S (X1,X2)="" G U2
SK K ^FHPT(FHDFN,"A",ADM,"AC",A1) S Z6=-1 G ACR^FHORD71
ORD ; Get next order #
 L +^FHPT(FHDFN,"A",ADM,"DI",0):$S($G(DILOCKTM):DILOCKTM,1:3)
 I '$D(^FHPT(FHDFN,"A",ADM,"DI",0)) S ^FHPT(FHDFN,"A",ADM,"DI",0)="^115.02A^^"
 S X=^FHPT(FHDFN,"A",ADM,"DI",0),FHORD=$P(X,"^",3)+1,^(0)=$P(X,"^",1,2)_"^"_FHORD_"^"_($P(X,"^",4)+1)
 L -^FHPT(FHDFN,"A",ADM,"DI",0) Q:'$D(^FHPT(FHDFN,"A",ADM,"DI",FHORD))  G ORD
OE3 ; Enter New Re-enstated Order
 Q:$$VERSION^XPDUTL("OR")=2.5
 D ORD^FHORR S FHNO1=$G(^FHPT(FHDFN,"A",ADM,"DI",A2,0)),FHNO2=$G(^(1)),FHNO3=$G(^(2))
 S ^FHPT(FHDFN,"A",ADM,"DI",FHORD1,0)=FHORD1_"^"_$P(FHNO1,"^",2,8)_"^"_D2_"^"_$P(FHNO1,"^",10)_"^"_DUZ_"^"_NOW_"^"_$P(FHNO1,"^",13) S:FHNO2'="" ^(1)=FHNO2
 S:FHNO3 ^(2)=FHNO3,^(3)=DUZ_"^"_NOW S A2=FHORD1 I FHWF D OE^FHORR S NOW=FHNOW
 K FHNO1,FHNO2,FHNO3,FHORD1 Q
