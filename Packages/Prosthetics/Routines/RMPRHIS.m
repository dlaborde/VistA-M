RMPRHIS ;PHX/RFM-ADD HISTORICAL DATA ;8/29/1994
 ;;3.0;PROSTHETICS;**19,45,90**;Feb 09, 1996
 K RMPRDFN,RMPRSSN,RMPRNAM,RMPRDOB,DIR D HOME^%ZIS S RMPRF=""
 W @IOF D DIV4^RMPRSIT G:$D(X) EXIT^RMPRHISL D:'$D(RMPRHIS) GETPAT^RMPRUTIL G:'$D(RMPRDFN) EXIT^RMPRHISL
VIEW D ^RMPRPAT I $D(RMPRKILL) W !,$C(7),"Deleted..." G EXIT^RMPRHISL
RES ;ADDS ANOTHER ITEM FOR HISTORICAL DATA
 S CK="W:$D(DUOUT) @IOF,$C(7),!!?28,""Deleted..."" H 3 W:$D(DUOUT) @IOF G:$D(DUOUT) RES^RMPRHIS G:$D(DIRUT) EXIT^RMPRHISL"
 K R1,DA,DD,DIC,PRC,X,Y
 S R1(0)=DT_U_RMPRDFN,$P(R1(0),U,10)=RMPR("STA"),$P(R1(0),U,15)="*",$P(R1(0),U,13)=13,$P(R1(0),U,27)=DUZ,R1("AM")=""
 ;DISPLAY VARIABLE
 S (R3("D"),R4("D"))="",RMPRHISD=1
1 ;ENTRY POINT TO EDIT AN ITEM
 W @IOF
 W !?30,RMPRNAM,! S:$P(R1(0),U,3) %DT("B")=$P(R3("D"),U,3) S %DT("A")="DATE OF REQUEST: ",%DT="AEXP" D ^%DT G:X="" ^RMPRHIS G:X="^"&$P(R3("D"),U,3) LIST^RMPRHISL G:X="^" EXIT^RMPRHISL
 S:Y>0 $P(R1(0),U,3)=Y D DD^%DT S $P(R3("D"),U,3)=Y
 S DIR("?")="Enter V for VA or C for Commercial"
LI S DIR(0)="SBO^V:VA;C:COMMERCIAL"
 S DIR("A")="Select VA or COMMERCIAL SOURCE"
 S:$P(R3("D"),U,14)?.A&($P(R3("D"),U,14)'="") DIR("B")=$P(R3("D"),U,14)
 D ^DIR
 I $P(R3("D"),U,14)?1A.A&($D(DUOUT)) K DIR G LIST^RMPRHISL
 G:$D(DTOUT) EXIT^RMPRHISL
 G:X=""!($D(DUOUT)) ^RMPRHIS
 G:$D(DIRUT) EXIT^RMPRHISL S $P(R1(0),U,14)=Y K DIR
 S $P(R3("D"),U,14)=$S(Y="C":"COMMERCIAL",Y="V":"VA",1:"")
2 ;
 S DIC=661,DIC(0)="AEQM",DIC("A")="ITEM: "
 S:$P(R1(0),U,6) DIC("B")=$P(R1(0),U,6)
 D ^DIC
 I $P(R3("D"),U,6)'=""&$D(DUOUT) K DIC G LIST^RMPRHISL
 X:$D(DUOUT) CK Q:'$D(R1(0))
 G:(+Y'>0)&($D(DTOUT)) EXIT^RMPRHISL
 I +Y'>0 W !!,?5,$C(7),"This is a required response.  Enter '^' to exit",! G 2
 S $P(R1(0),U,6)=+Y,$P(R3("D"),U,6)=$P(Y,U,2) K DIC
V ;
 S DIC=440,DIC(0)="AEQM",DIC("A")="VENDOR: "
 S:$P(R1(0),U,9) DIC("B")=$P(R1(0),U,9)
 D ^DIC
 I $P(R3("D"),U,9)'=""&$D(DUOUT) K DIC G LIST^RMPRHISL
 X:$D(DUOUT) CK Q:'$D(R1(0))
 G:(+Y'>0)&($D(DTOUT)) EXIT^RMPRHISL
 I +Y'>0 W !!,?5,$C(7),"This is a required response.  Enter '^' to exit",! G V
 S $P(R1(0),U,9)=+Y,$P(R3("D"),U,9)=$P(Y,U,2) K DIC
 W ! S DIR(0)="660,2"
 S:$P(R1(0),U,4)?.E&($P(R3("D"),U,4)'="") DIR("B")=$P(R3("D"),U,4)
 D ^DIR
 I $P(R3("D"),U,4)'=""&($D(DUOUT)) K DIR G LIST^RMPRHISL
 X:$D(DIRUT) CK Q:'$D(R1(0))  S $P(R1(0),U,4)=Y K DIR
 S $P(R3("D"),U,4)=$S(Y="I":"INITIAL ISSUE",Y="X":"REPAIR",Y="R":"REPLACE",Y="S":"SPARE",Y=5:"RENTAL",1:"")
 S DIR(0)="660,62"
 S:$P(R1("AM"),U,3)?1N.N DIR("B")=$P(R4("D"),U,3) D ^DIR G:$P(R1("AM"),U,3)'=""&($D(DUOUT)) LIST^RMPRHISL X:$D(DIRUT) CK Q:'$D(R1(0))
 S $P(R1("AM"),U,3)=Y
 S $P(R4("D"),U,3)=$S(Y=1:"SC/OP",Y=2:"SC/IP",Y=3:"NSC/IP",Y=4:"NSC/OP",1:"")
 K DIR
 I Y<4 S $P(R1("AM"),U,4)="",$P(R4("D"),U,4)="" G ^RMPRHISL
 I Y=4 S DIR(0)="660,63" S:$P(R1("AM"),U,4)?1N.N DIR("B")=$P(R4("D"),U,4) D ^DIR G:X="" NEX^RMPRHISL I $D(DUOUT)&($P(R1(0),U,7)) K DIR G LIST^RMPRHISL G:$D(DIRUT) EXIT^RMPRHISL
 I $P(R1("AM"),U,3)=4 S $P(R1("AM"),U,4)=Y,$P(R4("D"),U,4)=$S(Y=1:"SPECIAL LEGISLATION",Y=2:"A&A",Y=3:"PHC",Y=4:"ELIGIBILITY REFORM",1:"") G ^RMPRHISL