IBXSA23 ; ;12/12/16
 D DE G BEGIN
DE S DIE="^DGCR(399,",DIC=DIE,DP=399,DL=1,DIEL=0,DU="" K DG,DE,DB Q:$O(^DGCR(399,DA,""))=""
 I $D(^("M2")) S %Z=^("M2") S %=$P(%Z,U,1) S:%]"" DE(5)=% S %=$P(%Z,U,2) S:%]"" DE(1)=% S %=$P(%Z,U,3) S:%]"" DE(11)=%,DE(19)=% S %=$P(%Z,U,4) S:%]"" DE(15)=% S %=$P(%Z,U,5) S:%]"" DE(25)=% S %=$P(%Z,U,6) S:%]"" DE(29)=%,DE(33)=%
 I $D(^("TX")) S %Z=^("TX") S %=$P(%Z,U,8) S:%]"" DE(40)=% S %=$P(%Z,U,9) S:%]"" DE(46)=%
 K %Z Q
 ;
W W !?DL+DL-2,DLB_": "
 Q
O D W W Y W:$X>45 !?9
 I $L(Y)>19,'DV,DV'["I",(DV["F"!(DV["K")) G RW^DIR2
 W:Y]"" "// " I 'DV,DV["I",$D(DE(DQ))#2 K X S X("FIELD")=DIFLD,X("FILE")=DP W "  ("_$$EZBLD^DIALOG(710,.X)_")" K X S X="" Q  ;**
TR Q:DV["K"&(DUZ(0)'="@")  R X:DTIME E  S (DTOUT,X)=U W $C(7)
 Q
A K DQ(DQ) S DQ=DQ+1
B G @DQ
RE G A:DV["K"&(DUZ(0)'["@"),PR:$D(DE(DQ)) D W,TR
N I X="" G NKEY:$D(^DD("KEY","F",DP,DIFLD)),A:DV'["R",X:'DV,X:D'>0,A
RD G QS:X?."?" I X["^" D D G ^DIE17
 I X="@" D D G Z^DIE2
 I X=" ",DV["d",DV'["P",$D(^DISV(DUZ,"DIE",DLB)) S X=^(DLB) I DV'["D",DV'["S" W "  "_X
T G M^DIE17:DV,^DIE3:DV["V",P:DV'["S" I X?.ANP D SET^DIED I 'DDER G V
 K DDER G X
P I DV["P" S DIC=U_DU,DIC(0)=$E("EN",$D(DB(DQ))+1)_"M"_$E("L",DV'["'") S:DIC(0)["L" DLAYGO=+$P(DV,"P",2) G:DV["*" AST^DIED D NOSCR^DIED S X=+Y,DIC=DIE G X:X<0
 G V:DV'["N" D D I $L($P(X,"."))>24 K X G Z
 I $P(DQ(DQ),U,5)'["$",X?.1"-".N.1".".N,$P(DQ(DQ),U,5,99)["+X'=X" S X=+X
V D @("X"_DQ) K YS
UNIQ I DV["U",$D(X),DIFLD=.01 K % M %=@(DIE_"""B"",X)") K %(DA) K:$O(%(0)) X
Z K DIC("S"),DLAYGO I $D(X),X'=U D:$G(DE(DW,"INDEX")) SAVEVALS G:'$$KEYCHK UNIQFERR^DIE17 S DG(DW)=X S:DV["d" ^DISV(DUZ,"DIE",DLB)=X G A
X W:'$D(ZTQUEUED) $C(7),"??" I $D(DB(DQ)) G Z^DIE17
 S X="?BAD"
QS S DZ=X D D,QQ^DIEQ G B
D S D=DIFLD,DQ(DQ)=DLB_U_DV_U_DU_U_DW_U_$P($T(@("X"_DQ))," ",2,99) Q
Y I '$D(DE(DQ)) D O G RD:"@"'[X,A:DV'["R"&(X="@"),X:X="@" S X=Y G N
PR S DG=DV,Y=DE(DQ),X=DU I $D(DQ(DQ,2)) X DQ(DQ,2) G RP
R I DG["P",@("$D(^"_X_"0))") S X=+$P(^(0),U,2) G RP:'$D(^(Y,0)) S Y=$P(^(0),U),X=$P(^DD(X,.01,0),U,3),DG=$P(^(0),U,2) G R
 I DG["V",+Y,$P(Y,";",2)["(",$D(@(U_$P(Y,";",2)_"0)")) S X=+$P(^(0),U,2) G RP:'$D(^(+Y,0)) S Y=$P(^(0),U) I $D(^DD(+X,.01,0)) S DG=$P(^(0),U,2),X=$P(^(0),U,3) G R
 X:DG["D" ^DD("DD") I DG["S" S %=$P($P(";"_X,";"_Y_":",2),";") I %]"" S Y=$S($G(DUZ("LANG"))'>1:%,'DIFLD:%,1:$$SET^DIQ(DP,DIFLD,Y))
RP D O I X="" S X=DE(DQ) G A:'DV,A:DC<2,N^DIE17
I I DV'["I",DV'["#" G RD
 D E^DIE0 G RD:$D(X),PR
 Q
SAVEVALS S @DIEZTMP@("V",DP,DIIENS,DIFLD,"O")=$G(DE(DQ)) S:$D(^("F"))[0 ^("F")=$G(DE(DQ))
 I $D(DE(DW,"4/")) S @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")=""
 E  K @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")
 Q
NKEY W:'$D(ZTQUEUED) "??  Required key field" S X="?BAD" G QS
KEYCHK() Q:$G(DE(DW,"KEY"))="" 1 Q @DE(DW,"KEY")
BEGIN S DNM="IBXSA23",DQ=1
1 D:$D(DG)>9 F^DIE17,DE S DQ=1,DW="M2;2",DV="FX",DU="",DIFLD=141,DLB="Primary Payer - Alt Inst Prim Payer ID"
 G RE
X1 K:$L(X)>30!($L(X)<1)!($$UP^XLFSTR(X)["PRNT") X
 I $D(X),X'?.ANP K X
 Q
 ;
2 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=2 D X2 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X2 I X="",$G(DIPA("OLDALTI1"))="" S Y="@10611"
 Q
3 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=3 D X3 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X3 S Y="@1061"
 Q
4 S DQ=5 ;@10611
5 S DW="M2;1",DV="*P355.98'",DU="",DIFLD=140,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C5^IBXSA23"
 S DU="IBA(355.98,"
 S Y="@"
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
C5 G C5S:$D(DE(5))[0 K DB
 S X=DE(5),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,2),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,2)=DIV,DIH=399,DIG=141 D ^DICR
C5S S X="" G:DG(DQ)=X C5F1 K DB
 S X=DG(DQ),DIC=DIE
 X ^DD(399,140,1,1,1.3) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,2),X=X S DIU=X K Y S X=DIV S X=$$ACIDD^IBCU(DA,1,X) X ^DD(399,140,1,1,1.4)
C5F1 Q
X5 Q
6 S DQ=7 ;@1061
7 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=7 D X7 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X7 I '$G(DIPA("I2")) S Y="@107"
 Q
8 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=8 D X8 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X8 K DIPA("BRANCH") S DIPA("BRANCH")=$$ACINTEL^IBCSC10(DIPA("I2"),"@1062")
 Q
9 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=9 D X9 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X9 S:DIPA("BRANCH")]"" Y=DIPA("BRANCH") K DIPA("BRANCH")
 Q
10 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=10 D X10 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X10 S DIPA("OLDALTT2")=$P($G(^DGCR(399,DA,"M2")),U,3)
 Q
11 D:$D(DG)>9 F^DIE17,DE S DQ=11,DW="M2;3",DV="*P355.98'",DU="",DIFLD=142,DLB="Secondary Payer - Alt Inst Prim Payer ID Type"
 S DE(DW)="C11^IBXSA23"
 S DU="IBA(355.98,"
 G RE
C11 G C11S:$D(DE(11))[0 K DB
 S X=DE(11),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,4),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,4)=DIV,DIH=399,DIG=143 D ^DICR
C11S S X="" G:DG(DQ)=X C11F1 K DB
 S X=DG(DQ),DIC=DIE
 X ^DD(399,142,1,1,1.3) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,4),X=X S DIU=X K Y S X=DIV S X=$$ACIDD^IBCU(DA,2,X) X ^DD(399,142,1,1,1.4)
C11F1 Q
X11 S DIC("S")="I $$ACIDS^IBCU(DA,2,+Y)" D ^DIC K DIC S DIC=$G(DIE),X=+Y K:Y<0 X
 Q
 ;
12 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=12 D X12 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X12 I X="",$G(DIPA("OLDALTT2"))="" S Y="@1062"
 Q
13 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=13 D X13 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X13 I $P($G(^DGCR(399,DA,"M2")),U,3)="" S Y="@1062"
 Q
14 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=14 D X14 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X14 S DIPA("OLDALTI2")=$P($G(^DGCR(399,DA,"M2")),U,4)
 Q
15 D:$D(DG)>9 F^DIE17,DE S DQ=15,DW="M2;4",DV="FX",DU="",DIFLD=143,DLB="Secondary Payer - Alt Inst Prim Payer ID"
 G RE
X15 K:$L(X)>30!($L(X)<1)!($$UP^XLFSTR(X)["PRNT") X
 I $D(X),X'?.ANP K X
 Q
 ;
16 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=16 D X16 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X16 I X="",$G(DIPA("OLDALTI2"))="" S Y="@10621"
 Q
17 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=17 D X17 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X17 S Y="@1062"
 Q
18 S DQ=19 ;@10621
19 S DW="M2;3",DV="*P355.98'",DU="",DIFLD=142,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C19^IBXSA23"
 S DU="IBA(355.98,"
 S Y="@"
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
C19 G C19S:$D(DE(19))[0 K DB
 S X=DE(19),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,4),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,4)=DIV,DIH=399,DIG=143 D ^DICR
C19S S X="" G:DG(DQ)=X C19F1 K DB
 S X=DG(DQ),DIC=DIE
 X ^DD(399,142,1,1,1.3) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,4),X=X S DIU=X K Y S X=DIV S X=$$ACIDD^IBCU(DA,2,X) X ^DD(399,142,1,1,1.4)
C19F1 Q
X19 Q
20 S DQ=21 ;@1062
21 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=21 D X21 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X21 I '$G(DIPA("I3")) S Y="@107"
 Q
22 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=22 D X22 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X22 K DIPA("BRANCH") S DIPA("BRANCH")=$$ACINTEL^IBCSC10(DIPA("I3"),"@107")
 Q
23 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=23 D X23 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X23 S:DIPA("BRANCH")]"" Y=DIPA("BRANCH") K DIPA("BRANCH")
 Q
24 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=24 D X24 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X24 S DIPA("OLDALTT2")=$P($G(^DGCR(399,DA,"M2")),U,5)
 Q
25 D:$D(DG)>9 F^DIE17,DE S DQ=25,DW="M2;5",DV="*P355.98'",DU="",DIFLD=144,DLB="Tertiary Payer - Alt Inst Prim Payer ID Type"
 S DE(DW)="C25^IBXSA23"
 S DU="IBA(355.98,"
 G RE
C25 G C25S:$D(DE(25))[0 K DB
 S X=DE(25),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,6),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,6)=DIV,DIH=399,DIG=145 D ^DICR
C25S S X="" G:DG(DQ)=X C25F1 K DB
 S X=DG(DQ),DIC=DIE
 X ^DD(399,144,1,1,1.3) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,6),X=X S DIU=X K Y S X=DIV S X=$$ACIDD^IBCU(DA,3,X) X ^DD(399,144,1,1,1.4)
C25F1 Q
X25 S DIC("S")="I $$ACIDS^IBCU(DA,3,+Y)" D ^DIC K DIC S DIC=$G(DIE),X=+Y K:Y<0 X
 Q
 ;
26 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=26 D X26 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X26 I X="",$G(DIPA("OLDALTT3"))="" S Y="@1063"
 Q
27 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=27 D X27 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X27 I $P($G(^DGCR(399,DA,"M2")),U,5)="" S Y="@1063"
 Q
28 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=28 D X28 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X28 S DIPA("OLDALTI3")=$P($G(^DGCR(399,DA,"M2")),U,6)
 Q
29 D:$D(DG)>9 F^DIE17,DE S DQ=29,DW="M2;6",DV="FX",DU="",DIFLD=145,DLB="Tertiary Payer - Alt Inst Prim Payer ID"
 G RE
X29 K:$L(X)>30!($L(X)<1)!($$UP^XLFSTR(X)["PRNT") X
 I $D(X),X'?.ANP K X
 Q
 ;
30 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=30 D X30 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X30 I X="",$G(DIPA("OLDALTI3"))="" S Y="@10631"
 Q
31 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=31 D X31 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X31 S Y="@1063"
 Q
32 S DQ=33 ;@10631
33 S DW="M2;6",DV="FX",DU="",DIFLD=145,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S Y="@"
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
X33 Q
34 S DQ=35 ;@1063
35 S DQ=36 ;@107
36 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=36 D X36 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X36 S:IBDR20'["107" Y="@108"
 Q
37 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=37 D X37 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X37 I $$TEST^IBCEF84(DA) S Y="@1070"
 Q
38 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=38 D X38 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X38 I '$P($G(^DGCR(399,DA,"TX")),U,8),'$$TXMT^IBCEF4(DA) S Y="@1071"
 Q
39 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=39 D X39 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X39 I $$REQMRA^IBEFUNC(DA) S Y="@10711"
 Q
40 S DW="TX;8",DV="*S",DU="",DIFLD=27,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DU="0:NO FORCED PRINT;1:FORCE LOCAL PRINT;2:*FORCE CLEARINGHOUSE PRINT;"
 S Y="NO FORCED PRINT"
 G Y
X40 Q
41 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=41 D X41 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X41 S Y="@108"
 Q
42 S DQ=43 ;@1070
43 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=43 D X43 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X43 D MESSAGE^IBCEF84
 Q
44 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=44 D X44 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X44 S Y="@108"
 Q
45 S DQ=46 ;@10711
46 S DW="TX;9",DV="S",DU="",DIFLD=28,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DU="0:NO FORCED PRINT;1:MEDICARE SECONDARY FORCE LOCAL PRINT;"
 S Y="NO FORCED PRINT"
 G Y
X46 Q
47 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=47 D X47 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X47 S Y="@108"
 Q
48 S DQ=49 ;@1071
49 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=49 D X49 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X49 N X,Y,DIR S DIR(0)="EA",DIR("A",1)="NO FIELDS AVAILABLE TO EDIT",DIR("A")="PRESS RETURN TO CONTINUE: " W ! D ^DIR K DIR
 Q
50 S DQ=51 ;@108
51 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=51 D X51 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X51 S:IBDR20'["108" Y="@109"
 Q
52 S DQ=53 ;@109
53 G 0^DIE17
