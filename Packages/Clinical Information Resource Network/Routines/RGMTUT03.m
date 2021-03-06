RGMTUT03 ;BIR/CML-MPI/PD Compile and Correct Data Validation Data for Local Sites (CON'T) ;08/12/02
 ;;1.0;CLINICAL INFO RESOURCE NETWORK;**20**;30 Apr 99
 ;
 I '$D(^XTMP("RGMT","UT01")) D  G QUIT
 .I '$D(RGHLMQ) W !!,"^RGMTUT01 must be run before this report can be printed!"
 K ^XTMP("RGMT","HLMQUT01")
 I '$D(SITEOPT) S SITEOPT=0
 ;
DEV ;
 I $D(RGHLMQ) G START
 W !!,"Right Margin for this report is 80."
 K ZTSAVE S ZTSAVE("SITEOPT")=""
 D EN^XUTMDEVQ("START^RGMTUT03","MPI/PD - Print Local Site Statistic Report",.ZTSAVE) I 'POP Q
 W !,"NO DEVICE SELECTED OR REPORT PRINTED!!"
 G QUIT
 ;
START ;
 K LN
 S SITE=$P($$SITE^VASITE(),"^",2),LOCSTA=$P($$SITE^VASITE(),"^",3),$P(LN,"-",81)=""
 D NOW^%DTC S HDT=$$FMTE^XLFDT($E(%,1,12))
 S COMPDT=$$FMTE^XLFDT($E(^XTMP("RGMT","UT01","@@","COMPILE STOPPED"),1,12))
 ;calculate compile time
 S COMPB=^XTMP("RGMT","UT01","@@","COMPILE STARTED")
 S COMPS=^XTMP("RGMT","UT01","@@","COMPILE STOPPED")
 S DIFF=($$FMDIFF^XLFDT(COMPS,COMPB,2))/3600
 ;
 I '$D(RGHLMQ) D
 .W @IOF,"MPI/PD Statistics - ",SITE,?53,"Printed ",HDT
 .W !,"Compiled ",COMPDT," (Compile Time: ",$J(DIFF,5,2)," hrs)",!,LN
 I $D(RGHLMQ) S ^XTMP("RGMT","HLMQUT01",LOCSTA,"@@ RUNDATE")=HDT_"^(Compile Time: "_$J(DIFF,5,2)_" hrs)"
 ;
 I '$D(RGHLMQ)&(SITEOPT=2) G DIAG1
 ;
CMOR ;Loop on CMOR totals in ^XTMP("RGMT","UT01","CMOR")
 S GRAND=0
 I '$D(RGHLMQ) W !,"=>CMOR TOTALS:"
 S CMOR="" F  S CMOR=$O(^XTMP("RGMT","UT01","CMOR",CMOR)) Q:$E(CMOR)="Z"  Q:CMOR=""  D
 .S CMORSTA=0 F  S CMORSTA=$O(^XTMP("RGMT","UT01","CMOR",CMOR,CMORSTA)) Q:'CMORSTA  D
 ..S SKIP=0
 ..I CMORSTA=564 S SKIP=1,CMORNM="FAYETTEVILLE, AR"
 ..I CMORSTA=565 S SKIP=1,CMORNM="FAYETTEVILLE, NC"
 ..I 'SKIP D 
 ...S FRSTNM=$P(CMOR,",")
 ...S CMORNM=$S(FRSTNM="VAMC":$P(CMOR,",",2),1:FRSTNM)
 ..S TOT=$G(^XTMP("RGMT","UT01","CMOR",CMOR,CMORSTA,"1TOT"))
 ..I TOT="" S TOT=$G(^XTMP("RGMT","UT01","CMOR",CMOR,CMORSTA))
 ..S GRAND=GRAND+TOT
 ..I $D(RGHLMQ) S ^XTMP("RGMT","HLMQUT01",LOCSTA,"CMOR",CMOR,CMORSTA)=TOT
 ..I '$D(RGHLMQ) W !,CMORNM,?30," = ",?33,$J(TOT,7)
 I '$D(RGHLMQ) W !?59,"TOTAL: ",?66,$J(GRAND,7)
 ;
TF ;Loop on Treating Facility totals   
 I '$D(RGHLMQ) W !!,"=>TREATING FACILITY TOTALS:"
 S TF=""
 F  S TF=$O(^XTMP("RGMT","UT01","TF",TF)) Q:$E(TF)="Z"  Q:TF=""  D
 .S TFSTA=0 F  S TFSTA=$O(^XTMP("RGMT","UT01","TF",TF,TFSTA)) Q:'TFSTA  D
 ..S SKIP=0
 ..I TFSTA=564 S SKIP=1,TFNM="FAYETTEVILLE, AR"
 ..I TFSTA=565 S SKIP=1,TFNM="FAYETTEVILLE, NC"
 ..I 'SKIP D 
 ...S FRSTNM=$P(TF,",")
 ...S TFNM=$S(FRSTNM="VAMC":$P(TF,",",2),1:FRSTNM)
 ..S TOT=^XTMP("RGMT","UT01","TF",TF,TFSTA)
 ..I '$D(RGHLMQ) W !,TFNM,?30," = ",?33,$J(TOT,7)
 ..I $D(RGHLMQ) S ^XTMP("RGMT","HLMQUT01",LOCSTA,"TF",TF,TFSTA)=TOT
 ;
 I SITEOPT=1,'$D(RGHLMQ) W !! G DIAG2
 ;
DIAG1 ;print diagnostic data
 I '$D(^XTMP("RGMT","UT01","TOT CMOR MISS TF")) S ^XTMP("RGMT","UT01","TOT CMOR MISS TF")=0
 I '$D(RGHLMQ) D
 .W !,"Total CMORs missing a Treating Facility",?66,"="
 .W $J(^XTMP("RGMT","UT01","TOT CMOR MISS TF"),6)
 I $D(RGHLMQ) S ^XTMP("RGMT","HLMQUT01",LOCSTA,"TOT CMOR MISS TF")=^XTMP("RGMT","UT01","TOT CMOR MISS TF")
 ;
 I '$D(^XTMP("RGMT","UT01","TOT LOC SITE MISS TF")) S ^XTMP("RGMT","UT01","TOT LOC SITE MISS TF")=0
 I '$D(RGHLMQ) D
 .W !,"Total patients with NATIONAL ICN and missing local TF",?66,"="
 .W $J(^XTMP("RGMT","UT01","TOT LOC SITE MISS TF"),6)
 I $D(RGHLMQ) S ^XTMP("RGMT","HLMQUT01",LOCSTA,"TOT LOC SITE MISS TF")=^XTMP("RGMT","UT01","TOT LOC SITE MISS TF")
 ;
 I '$D(^XTMP("RGMT","UT01","TOT TFDUP")) S ^XTMP("RGMT","UT01","TOT TFDUP")=0
 I '$D(RGHLMQ) D
 .W !,"Total patients with Treating Facility dups",?66,"="
 .W $J(^XTMP("RGMT","UT01","TOT TFDUP"),6)
 I $D(RGHLMQ) S ^XTMP("RGMT","HLMQUT01",LOCSTA,"TOT TFDUP")=^XTMP("RGMT","UT01","TOT TFDUP")
 ;
 I '$D(^XTMP("RGMT","UT01","REIND","MISSING AICN XREF")) S ^XTMP("RGMT","UT01","REIND","MISSING AICN XREF")=0
 I '$D(RGHLMQ) D
 .W !,"Total patients with any type ICN and no ""AICN"" xref",?66,"="
 .W $J(^XTMP("RGMT","UT01","REIND","MISSING AICN XREF"),6)
 I $D(RGHLMQ) S ^XTMP("RGMT","HLMQUT01",LOCSTA,"MISSING AICN XREF")=^XTMP("RGMT","UT01","REIND","MISSING AICN XREF")
 ;
 I '$D(^XTMP("RGMT","UT01","REIND","MISSING AICNL XREF")) S ^XTMP("RGMT","UT01","REIND","MISSING AICNL XREF")=0
 I '$D(RGHLMQ) D
 .W !,"Total patients with LOCAL ICN and no ""AICNL"" xref",?66,"="
 .W $J(^XTMP("RGMT","UT01","REIND","MISSING AICNL XREF"),6)
 I $D(RGHLMQ) S ^XTMP("RGMT","HLMQUT01",LOCSTA,"MISSING AICNL XREF")=^XTMP("RGMT","UT01","REIND","MISSING AICNL XREF")
 ;
 I '$D(^XTMP("RGMT","UT01","REIND","MISSING SSN XREF")) S ^XTMP("RGMT","UT01","REIND","MISSING SSN XREF")=0
 I '$D(RGHLMQ) D
 .W !,"Total patients with any type ICN and missing ""SSN"" xref",?66,"="
 .W $J(^XTMP("RGMT","UT01","REIND","MISSING SSN XREF"),6)
 I $D(RGHLMQ) S ^XTMP("RGMT","HLMQUT01",LOCSTA,"MISSING SSN XREF")=^XTMP("RGMT","UT01","REIND","MISSING SSN XREF")
 ;
 I '$D(^XTMP("RGMT","UT01","CMOR WITH NO ICN")) S ^XTMP("RGMT","UT01","CMOR WITH NO ICN")=0
 I '$D(RGHLMQ) D
 .W !,"Total patients with NO ICN but have a CMOR assigned",?66,"="
 .W $J(^XTMP("RGMT","UT01","CMOR WITH NO ICN"),6)
 I $D(RGHLMQ) S ^XTMP("RGMT","HLMQUT01",LOCSTA,"CMOR WITH NO ICN")=^XTMP("RGMT","UT01","CMOR WITH NO ICN")
 ;
 I '$D(^XTMP("RGMT","UT01","TOT NO ICN W/TF")) S ^XTMP("RGMT","UT01","TOT NO ICN W/TF")=0
 I '$D(RGHLMQ) D
 .W !,"Total patients with NO ICN but have TFs assigned",?66,"="
 .W $J(^XTMP("RGMT","UT01","TOT NO ICN W/TF"),6)
 I $D(RGHLMQ) S ^XTMP("RGMT","HLMQUT01",LOCSTA,"TOT NO ICN W/TF")=^XTMP("RGMT","UT01","TOT NO ICN W/TF")
 ;
 I '$D(^XTMP("RGMT","UT01","TOT LOC ICN W/REMOTE TF")) S ^XTMP("RGMT","UT01","TOT LOC ICN W/REMOTE TF")=0
 I '$D(RGHLMQ) D
 .W !,"Total patients with LOCAL ICN but have remote TFs assigned",?66,"="
 .W $J(^XTMP("RGMT","UT01","TOT LOC ICN W/REMOTE TF"),6)
 I $D(RGHLMQ) S ^XTMP("RGMT","HLMQUT01",LOCSTA,"TOT LOC ICN W/REMOTE TF")=^XTMP("RGMT","UT01","TOT LOC ICN W/REMOTE TF")
 ;
DIAG2 ;display counts for total patients with local/nat'l/no ICN
 ;
 I '$D(^XTMP("RGMT","UT01","REIND","NATIONAL ICN COUNT")) S ^XTMP("RGMT","UT01","REIND","NATIONAL ICN COUNT")=0
 I '$D(RGHLMQ) D
 .W !?3,"Total patients with a national ICN",?42,"= "
 .W $J(^XTMP("RGMT","UT01","REIND","NATIONAL ICN COUNT"),8)
 I $D(RGHLMQ) S ^XTMP("RGMT","HLMQUT01",LOCSTA,"NATIONAL ICN COUNT")=^XTMP("RGMT","UT01","REIND","NATIONAL ICN COUNT")
 ;
 I '$D(^XTMP("RGMT","UT01","REIND","LOCAL ICN COUNT")) S ^XTMP("RGMT","UT01","REIND","LOCAL ICN COUNT")=0
 I '$D(RGHLMQ) D
 .W !?3,"Total patients with a local ICN",?42,"= "
 .W $J(^XTMP("RGMT","UT01","REIND","LOCAL ICN COUNT"),8)
 I $D(RGHLMQ) S ^XTMP("RGMT","HLMQUT01",LOCSTA,"LOCAL ICN COUNT")=^XTMP("RGMT","UT01","REIND","LOCAL ICN COUNT")
 ;
 I '$D(^XTMP("RGMT","UT01","REIND","NO ICN COUNT")) S ^XTMP("RGMT","UT01","REIND","NO ICN COUNT")=0
 I '$D(RGHLMQ) D
 .W !?3,"Total patients with no ICN",?42,"= "
 .W $J(^XTMP("RGMT","UT01","REIND","NO ICN COUNT"),8)
 I $D(RGHLMQ) S ^XTMP("RGMT","HLMQUT01",LOCSTA,"NO ICN COUNT")=^XTMP("RGMT","UT01","REIND","NO ICN COUNT")
 ;
QUIT ;
 K %,CMOR,CMORNM,CMORSTA,COMDT,COMPB,COMPDT,COMPS,DIFF,FRSTNM,GRAND,HDT,LN,LOCSTA,SITE,SITEOPT,SKIP,TF,TFNM,TFSTA,TOT
 Q
