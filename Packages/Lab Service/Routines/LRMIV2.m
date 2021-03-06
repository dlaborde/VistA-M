LRMIV2 ;SLC/DLG - MICROBIOLOGY VERIFY AUTO INST ROUTINE ;3/2/03  18:09
 ;;5.2;LAB SERVICE;**242,295**;Sep 27, 1994
 ;from LRFAST,LRMIV,LRVER
PAT S X=LRAN
 F I=0:0 R:'$D(LRAN) !!,"Accession #: ",X:DTIME Q:X=""!(X[U)  S LRANOK=1,LRCAPOK=1 D LRANX^LRMIU4 D:LRANOK PAT1,CAP K:LRANOK LRAN I 'LRANOK W !,"Enter the accession number" K LRAN
 Q
CAP I LRCAPOK,LRANOK,$P(LRPARAM,U,14),$P($G(^LRO(68,LRAA,0)),U,16) D LOOK^LRCAPV1 Q
PAT1 ;
 S LRDFN=+^LRO(68,LRAA,1,LRAD,1,LRAN,0),LRIDT=9999999-^(3),LRCDT=+^(3),LREAL=$P(^(3),U,2),LRI=+$O(^(5,0)),LRSPEC=$S($D(^(LRI,0)):+^(0),1:"")
 I $D(^LR(LRDFN,"MI",LRIDT,0)) S Y(0)=^(0)
 I '$D(^LR(LRDFN,"MI",LRIDT,0)) D BB
 S LRDPF=$P(^LR(LRDFN,0),U,2),DFN=$P(^(0),U,3),LRUNDO=0 D PT^LRX W ?25,"  ",PNM,?47," ",SSN
 I $P(^LR(LRDFN,"MI",LRIDT,0),U,3) W !,"Final report has been verified by microbiology supervisor.",$C(7),!,"If you proceed in editing, this report will need to be reverified."
 F I=0:0 W !,?20,"OK" S %=1 D YN^DICN Q:%  W !,"Enter 'Y' or 'N':"
 I %=2!(%<0) S LRCAPOK=0 Q
 I $P(^LR(LRDFN,"MI",LRIDT,0),U,3)!$P(^LR(LRDFN,"MI",LRIDT,0),U,9) S LRUNDO=1 ;W:$P(^(0),U,9) !,"(This is an AMENDED report)",!
 F I=0:0 D EC Q:$D(LRNPTP)  W:N=0 !,"NO TESTS ON WORKLIST" Q:N=0  S LRI=1 Q:N'>1  R !,"Choose: ",LRI:DTIME Q:LRI[U!(LRI="")  S LRI=+LRI I LRI>0,LRI'>N,LRI?1N.N Q
 I LRI[U!(LRI="") S LRCAPOK=0 Q
 S LRTS=LRTS(LRI) D:LRUNDO UNDO^LRMIV
 K DR S DA=LRIDT,DA(1)=LRDFN,DIE="^LR(LRDFN,""MI"","
 S LRSB=$S(LRTX(LRI)["11.5":1,LRTX(LRI)["15":5,LRTX(LRI)["19":8,LRTX(LRI)["23":11,LRTX(LRI)["34":16,1:""),LRFIFO=LRTX(LRI)["FIFO",(LREND,LRSAME)=0 D:'LRFIFO TIME^LRMIV3 I LREND K DR Q
 S LRSSC=$P(^LR(LRDFN,"MI",LRIDT,0),U,5)_U_$P(^(0),U,11)
 I LRTX(LRI)'["S DR=""[" X LRTX(LRI) D UPDATE^LRPXRM(LRDFN,"MI",LRIDT) D:'LREND EC3 K DR Q
 S (X,DR)=$P($P(LRTX(LRI),"[",2),"]",1) S:$L(X) X=+$O(^DIE("B",X,0)) I X<1,'$D(^DIE(X,"DR",2,63.05)) W !,DR," template doesn't exist for Microbiology." K DR Q
 S J=1 F I=0:0 S J=+$O(^DIE(X,"DR",J)) Q:J<1  S K=+$O(^DIE(X,"DR",J,0)),DR(J-1,K)=^DIE(X,"DR",J,K)
 S DR=DR(1,63.05) D ^DIE,UPDATE^LRPXRM(LRDFN,"MI",LRIDT),EC3 K DR
 Q
BB I '$D(^LR(LRDFN,"MI",0)) S ^LR(LRDFN,"MI",0)="^63.05DA^"
 S ^LR(LRDFN,"MI",0)=$P(^LR(LRDFN,"MI",0),U,1,2)_U_LRIDT_U_(1+$P(^(0),U,4))
 S ^LR(LRDFN,"MI",LRIDT,0)=LRCDT_U_LREAL_"^^^"_LRSPEC_U_$P(^LRO(68,LRAA,0),U,11)_" "_$E(LRAD,2,3)_" "_LRAN_"^^UNKNOWN",Y(0)=^(0)
 Q
EC K LRTX S LRAN=$P($P(Y(0),U,6)," ",3),LRLLOC=$P(Y(0),U,8)
 S LRODT=$P(^LRO(68,LRAA,1,LRAD,1,LRAN,0),U,4),LRSN=$P(^(0),U,5) I $D(^LRO(69,+LRODT,1,+LRSN,0)) S DIC="^LRO(69,"_LRODT_",1,",DA=LRSN,DR=6 D:DA>0 EN^DIQ S:$D(DTOUT)!($D(DUOUT)) LREND=1 Q:LREND
 K LRNPTP S N=0
 S LRI=0 F  S LRI=+$O(^LRO(68,LRAA,1,LRAD,1,+LRAN,4,LRI)) Q:LRI<.5  S N=N+1,LRTS(N)=+^(LRI,0),LRTX(N)=$S($L($P(^LAB(60,LRTS(N),0),U,14)):^LAB(62.07,$P(^(0),U,14),.1),1:"W !,""EDIT CODE IN FILE 60 NOT DEFINED.""") I LRTS(N)=LRPTP S LRNPTP=N Q
 I '$D(LRNPTP),LRPTP>0 W !,"Nothing matches with the test you preselected." Q
 I $D(LRNPTP) S LRI=LRNPTP
 I '$D(LRNPTP),N>0 F J=1:1:N W !,?3,J,?8,$P(^LAB(60,LRTS(J),0),U) S Y=$P(^LRO(68,LRAA,1,LRAD,1,+LRAN,4,LRTS(J),0),U,5) D:Y>0 DD^LRX W:Y'="" " completed ",Y
 Q
EC3 S LRSSCN=$P(^LR(LRDFN,"MI",LRIDT,0),U,5)_U_$P(^(0),U,11) D:LRSSCN'=LRSSC UPDATE K LRSSCN,LRSSC S LRSAME=1 D TIME^LRMIV3 D:'LREND STF^LRMIUT
 Q
UPDATE D CHECK K LRSSCOM,LRSSCOM1,LRSSCA,LRSSCAA,LRSSCAY,LRSSCAN,LRSSCOD,LRSSCON
 Q
CHECK S LRSSCA=$P(^LR(LRDFN,"MI",LRIDT,0),U,6),LRSSCAA=+$O(^LRO(68,"B",$P(LRSSCA," "),0))
 S X=$P(LRSSCA," ",2) D ^%DT S LRSSCAY=Y,LRSSCAN=$P(LRSSCA," ",3)
 S J=0 F I=0:0 S J=+$O(^LRO(68,LRSSCAA,1,LRSSCAY,1,LRSSCAN,5,J)) Q:J<1  I ^(J,0)=LRSSC S ^(0)=LRSSCN Q
 I J<1 Q
 S LRSSCOD=$P(^LRO(68,LRSSCAA,1,LRSSCAY,1,LRSSCAN,0),U,4),LRSSCON=^(.1)
 S J=0 F I=0:0 S J=+$O(^LRO(69,LRSSCOD,1,J)) Q:J<1  I $D(^(J,.1)),^(.1)=LRSSCON D ORDER Q
 Q
ORDER S $P(^LRO(69,LRSSCOD,1,J,0),U,3)=$P(LRSSCN,U,2)
 S K=0 F I=0:0 S K=+$O(^LRO(69,LRSSCOD,1,J,4,K)) Q:K<1  I ^(K,0)=LRSSC S ^(0)=LRSSCN Q
 Q
