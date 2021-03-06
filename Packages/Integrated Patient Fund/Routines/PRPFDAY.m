PRPFDAY ;ALTOONA/CTB  BALANCE ON SPECIFIED DAY ;3/7/97  2:44 PM
V ;;3.0;PATIENT FUNDS;**6**;JUNE 1,1989
 N NAME,Y,DATE
 S DIC=470,DIC(0)="AEMNZ" D ^DIC Q:Y<0  S DA=+Y
 S NAME=$P(Y(0),"^")
 S %DT="A",%DT("A")="Select Ending Date: " D ^%DT S DATE=+Y
 S X=$$ONE(DA,DATE)
 W !!,NAME,"  ",$P(X,"^",1),"  ",$P(X,"^",2),"  ",$P(X,"^",3)
 QUIT
HDR N PDATE
 D NOW^%DTC S PDATE=$$DATE^PRPFU1(%)
 W !,"Patient Funds Balances as of "_$$DATE^PRPFU1(DATE),?(IOM-($L(PDATE)+1)),PDATE
 W !!,?35,"LAST",?50,"COMPUTED",?65,"STORED"
 W !,"PATIENT NAME",?35,"TRANSACTION",?50,"BALANCE",?65,"BAL"
 W ! F I=1:1:IOM-2 W "-"
 W !
 QUIT
LOOP ;;LOOP THROUGH ALL PATIENTS FOR BALANCE IN ACCOUNTS ON SPECIFIED DATE
 S %DT="AQX",%DT("A")="Select Ending Date: " D ^%DT Q:Y<0  S DATE=+Y
 S ZTDESC="BALANCE IN ACCOUNTS",ZTSAVE("DATE")=DATE,ZTRTN="L1^PRPFDAY" D ^PRPFQ
 QUIT
L1 N TBAL,LTBAL,LINE,DAX,BALANCE,LASTBAL,LASTDATE
 S TBAL=0,LTBAL=0
 ;LOOP TO CREATE ALPHABETICAL ORDER
 K ^TMP($J,"PRPFDAY")
 D HDR S LINE=0
 S DA=0 F  S DA=$O(^PRPF(470,DA)) Q:'DA  D
 . S X=$$ONE(DA,DATE)
 . I +$P(X,"^",2)=0,+$P(X,"^",3)=0 QUIT
 . S LASTDATE=$$DATE^PRPFU1($P(X,"^",1)),BALANCE=$P(X,"^",2),LASTBAL=$P(X,"^",3)
 . S ^TMP($J,"PRPFDAY",$P(^DPT(DA,0),"^",1),DA)=LASTDATE_U_BALANCE_U_LASTBAL
 .QUIT
 S NAME="" F  S NAME=$O(^TMP($J,"PRPFDAY",NAME)) Q:NAME=""  S DA=0 F  S DA=$O(^(NAME,DA)) Q:'DA  D
 . S X=^(DA)
 . S LASTDATE=$P(X,"^",1),BALANCE=$P(X,"^",2),LASTBAL=$P(X,"^",3)
 . W !,NAME,?35,LASTDATE,?50,$J(BALANCE,10,2),?65,$J(LASTBAL,10,2) I BALANCE'=LASTBAL W "  ***" S LINE=LINE+1 I LINE>(IOSL-10) W @IOF D HDR S LINE=0
 . S TBAL=TBAL+BALANCE,LTBAL=LTBAL+LASTBAL
 . QUIT
 W !!,?50,$J(TBAL,10,2),?65,$J(LTBAL,10,2)
 QUIT
ONE(DA,DATE) ;;EXTRINSIC FUNCTION RETURNS THE BALANCE IN THE ACCOUNT OF PATIENT (DA) AS OF 2359 HOURS ON THE DATE SPECIFIED (DATE)
 ;;ASSUMES DA AND DATE ARE VALID
 N X,TRDATE,TRAMT,TRBAL,LASTDATE,N,BALANCE
 S DATE=$P(DATE,".",1)_"."_2399
 S BALANCE=0,LASTBAL=0
 S N=0,LASTDATE="" F  S N=$O(^PRPF(470,DA,3,N)) Q:'N  D
 . S X=$G(^(N,0)),TRDATE=$P(X,"^",2),TRAMT=$P(X,"^",3),TRBAL=$P(X,"^",6)
 . Q:TRDATE>DATE
 . S BALANCE=BALANCE+TRAMT
 . I LASTDATE'>TRDATE S LASTDATE=TRDATE,LASTBAL=TRBAL
 . QUIT
 QUIT LASTDATE_U_BALANCE_U_LASTBAL
