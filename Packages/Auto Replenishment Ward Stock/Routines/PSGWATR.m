PSGWATR ;BHAM ISC/CML-Item Activity Inquiry ; 19 Mar 93 / 8:21 AM
 ;;2.3; Automatic Replenishment/Ward Stock ;;4 JAN 94
 W !!,"This option will list all activity for a specified item, in a specified,",!,"area of use, for a specified date range.",!
BDT S %DT="AEX",%DT("A")="BEGINNING date for report: " D ^%DT K %DT G:Y<0 QUIT^PSGWATR1 S BDT=Y
EDT S %DT="AEX",%DT(0)=BDT,%DT("A")="ENDING date for report: " D ^%DT K %DT G:Y<0 QUIT^PSGWATR1 S EDT=Y
ASKAOU W ! S DIC="^PSI(58.1,",DIC(0)="QEAM",DIC("A")="Select AOU: " D ^DIC K DIC G:Y<0 QUIT^PSGWATR1 S AOU=+Y
ASKITEM W ! S DIC="^PSI(58.1,"_AOU_",1,",DIC(0)="QEAM",DIC("A")="Select ITEM: " D ^DIC K DIC G:Y<0 QUIT^PSGWATR1 S ITEM=+Y
 W !!,"The right margin for this report is 80.",!,"You may queue the report to print at a later time.",!!
DEV K %ZIS,IOP S %ZIS="QM",%ZIS("B")="" D ^%ZIS I POP W !,"NO DEVICE SELECTED OR REPORT PRINTED!" G QUIT^PSGWATR1
 I $D(IO("Q")) K IO("Q") S PSGWIO=ION,ZTIO="" K ZTSAVE,ZTDTH,ZTSK S ZTRTN="ENQ^PSGWATR",ZTDESC="Compile Item Activity Inquiry" F G="BDT","EDT","AOU","ITEM","PSGWIO" S:$D(@G) ZTSAVE(G)=""
 I  D ^%ZTLOAD,HOME^%ZIS K ZTSK G QUIT^PSGWATR1
 U IO
 ;
ENQ ;ENTRY POINT WHEN QUEUED
 K ^TMP("PSGWATR",$J) D AR,OD,RET G:$D(ZTQUEUED) PRTQUE G ^PSGWATR1
AR ;AUTOMATIC REPLENISHMENT INVENTORIES
 S TYPE="AR"
 F INVDA=0:0 S INVDA=$O(^PSI(58.1,AOU,1,ITEM,1,INVDA)) Q:'INVDA  I $D(^PSI(58.19,INVDA,0)) S ARDT=$P(^(0),"^") I ARDT'<BDT&(ARDT'>(EDT+.999999)) S QD=$P(^PSI(58.1,AOU,1,ITEM,1,INVDA,0),"^",5) I +QD D SETGL
 Q
 ;
OD ;ON DEMAND REQUESTS
 S TYPE="OD"
 F ODDA=0:0 S ODDA=$O(^PSI(58.1,AOU,1,ITEM,5,ODDA)) Q:'ODDA  I $D(^PSI(58.1,AOU,1,ITEM,5,ODDA,0)) S ODDT=$P(^(0),"^") I ODDT'<BDT&(ODDT'>(EDT+.999999)) S QD=$P(^(0),"^",2) I +QD D SETGL
 Q
RET ;RETURNS
 S TYPE="RET"
 F RETDT=0:0 S RETDT=$O(^PSI(58.1,AOU,1,ITEM,3,RETDT)) Q:'RETDT  I $D(^PSI(58.1,AOU,1,ITEM,3,RETDT,0)) I RETDT'<BDT&(RETDT'>(EDT+.999999)) S QD=$P(^(0),"^",2) I +QD D SETGL
 Q
SETGL ;
 I TYPE="AR" S ^TMP("PSGWATR",$J,"AR",ARDT)=INVDA_"^"_QD Q
 I TYPE="OD" S ^TMP("PSGWATR",$J,"OD",ODDT)=QD Q
 I TYPE="RET" S ^TMP("PSGWATR",$J,"RET",RETDT)=QD Q
 Q
 ;
PRTQUE ;AFTER DATA IS COMPILED, QUEUE THE PRINT
 K ZTSAVE,ZTIO S ZTIO=PSGWIO,ZTRTN="^PSGWATR1",ZTDESC="Print Item Activity Inquiry",ZTDTH=$H,ZTSAVE("^TMP(""PSGWATR"",$J,")="" F G="BDT","EDT","AOU","ITEM" S:$D(@G) ZTSAVE(G)=""
 D ^%ZTLOAD K ^TMP("PSGWATR",$J) G QUIT^PSGWATR1
 ;
