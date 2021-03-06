PRCPCRDC ;WISC/RFJ-case cart definition                             ;01 Sep 93
 ;;5.1;IFCAP;;Oct 20, 2000
 ;Per VHA Directive 10-93-142, this routine should not be modified.
 D ^PRCPUSEL Q:'$G(PRCP("I"))
 N ALLCARTS,X
 K X S X(1)="The Definition Case Cart Report will print a list of selected case carts displaying the items and quantities needed to assemble a case cart."
 D DISPLAY^PRCPUX2(40,79,.X)
 D CASECART^PRCPCRU1
 I '$O(^TMP($J,"PRCPCARTS",0)),'$D(ALLCARTS) Q
 I $D(ALLCARTS) W !!,"NOTE -- This option will use a lot of paper!"
 W ! S %ZIS="Q" D ^%ZIS Q:POP  I $D(IO("Q")) D  D ^%ZTLOAD K IO("Q"),ZTSK D Q Q
 .   S ZTDESC="Case Cart Definition Report",ZTRTN="DQ^PRCPCRDC"
 .   S ZTSAVE("PRCP*")="",ZTSAVE("ALLCARTS")="",ZTSAVE("^TMP($J,""PRCPCARTS"",")="",ZTSAVE("ZTREQ")="@"
 W !!,"<*> please wait <*>"
DQ ;  queue starts here
 N CCITEM,PRCPFLAG,SCREEN,X,Y
 S SCREEN=$$SCRPAUSE^PRCPUREP
 I $D(ALLCARTS) S CCITEM=0 F  S CCITEM=$O(^PRCP(445.7,CCITEM)) Q:'CCITEM!($G(PRCPFLAG))  D
 .   D PRINT I $G(PRCPFLAG) Q
 .   I SCREEN,$O(^PRCP(445.7,CCITEM)) D P^PRCPUREP
 ;
 I '$D(ALLCARTS) S CCITEM=0 F  S CCITEM=$O(^TMP($J,"PRCPCARTS",CCITEM)) Q:'CCITEM  D PRINT
Q D ^%ZISC K ^TMP($J,"PRCPCARTS")
 Q
 ;
 ;
PRINT ;  print a case cart definition
 N %,%I,CATALOG,CCDATA,CCDATE,CCLOC,CCNAME,CCUSER,DATA,EDITDATE,EDITUSER,ITEMDA,LOCATION,NOW,ONHAND,PAGE,PRCPINNM,PRCPINPT,REUSABLE,VENDOR
 S CCDATA=$G(^PRCP(445.7,CCITEM,0))
 S PRCPINPT=+$P(CCDATA,"^",2),PRCPINNM=$$INVNAME^PRCPUX1(PRCPINPT)
 S CCNAME=$$DESCR^PRCPUX1(PRCPINPT,CCITEM),CCUSER=$$USER^PRCPUREP($P(CCDATA,"^",3)),Y=$P(CCDATA,"^",4) D DD^%DT S CCDATE=Y,EDITUSER=$$USER^PRCPUREP($P(CCDATA,"^",5)),Y=$P(CCDATA,"^",6) D DD^%DT S EDITDATE=Y
 S CCLOC=$$STORAGE^PRCPESTO(PRCPINPT,CCITEM),ONHAND=$G(^PRCP(445,PRCPINPT,1,CCITEM,0)),ONHAND=$S(ONHAND="":"NOT STORED IN INVENTORY POINT",1:+$P(ONHAND,"^",7))
 D NOW^%DTC S Y=% D DD^%DT S NOW=Y,PAGE=1 U IO D H
 S ITEMDA=0 F  S ITEMDA=$O(^PRCP(445.7,CCITEM,1,ITEMDA)) Q:'ITEMDA!($G(PRCPFLAG))  S DATA=$G(^(ITEMDA,0)) D
 .   S VENDOR=$$MANDSRCE^PRCPU441(ITEMDA),CATALOG=$P($G(^PRC(441,ITEMDA,2,+VENDOR,0)),"^",4) I $E(CATALOG,16)'="" S CATALOG=$E(CATALOG,1,15)_"+"
 .   S LOCATION=$$STORAGE^PRCPESTO(PRCPINPT,ITEMDA)
 .   S REUSABLE=$$REUSABLE^PRCPU441(ITEMDA),REUSABLE=$S(REUSABLE:"R",1:"D")
 .   W !,$J(+$P(DATA,"^",2),7),?10,$E($$DESCR^PRCPUX1(PRCPINPT,ITEMDA),1,20),?31,ITEMDA,?38,REUSABLE,?40,VENDOR,?48,CATALOG,?67,$E(LOCATION,1,12)
 .   I $Y>(IOSL-4) D:SCREEN P^PRCPUREP Q:$D(PRCPFLAG)  D H
 I $G(PRCPFLAG) Q
 I $Y>(IOSL-7) D:SCREEN P^PRCPUREP Q:$D(PRCPFLAG)  D H
 W !!,"SPECIAL INSTRUCTIONS/REMARKS:"
 S X=0 F  S X=$O(^PRCP(445.7,CCITEM,2,X)) Q:'X!($G(PRCPFLAG))  S DATA=$G(^(X,0)) D
 .   I $Y>(IOSL-4) D:SCREEN P^PRCPUREP Q:$D(PRCPFLAG)  D H
 .   W !,DATA
 D END^PRCPUREP
 Q
 ;
 ;
H S %=NOW_"  PAGE "_PAGE,PAGE=PAGE+1 I PAGE'=2!(SCREEN) W @IOF
 W $C(13),"DEFINITION OF CASE CART REPORT FOR: ",$E(PRCPINNM,1,20),?(80-$L(%)),%
 W !?9,"NAME: ",CCNAME," (#",CCITEM,") ",?46,"LOCATION: ",CCLOC
 W !?15,"CURRENT QUANTITY ASSEMBLED: ",ONHAND
 W !?3,"CREATED BY: ",CCUSER,?50,"DATE: ",CCDATE
 W !?1,"LAST EDIT BY: ",EDITUSER,?50,"DATE: ",EDITDATE
 S %="",$P(%,"-",81)=""
 W !,$J("QTY",7),?10,"DESCRIPTION",?31,"MI#",?37,"RD",?40,"VEND#",?48,"CATALOG#",?67,"LOCATION",!,%
 Q
