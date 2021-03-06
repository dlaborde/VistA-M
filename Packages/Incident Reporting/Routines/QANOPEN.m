QANOPEN ;GJC/HISC-Open Incident Case Report ;6/15/92
 ;;2.0;Incident Reporting;**26**;08/07/1992
 S QANHD(0)="Open Incidents and the Associated Patient(s)"
 S QANHD(1)="""c"" denotes a Closed Patient Record"
 S QANHD(2)="""d"" denotes a Deleted Patient Record"
 S QANHD(3)="No Open Cases found!"
 S $P(QANLN,"+",$S(IOM=132:133,1:81))="",(QANPG,QANXIT)=0
 S Y=DT X ^DD("DD") S QANTDY=Y
 D DIV^QANRPT1 I $G(QANPOP) G KILL
 F QANAA=1:2:3 D
 . S QANIEN=0
 . F  S QANIEN=$O(^QA(742.4,"ACS",QANAA,QANIEN)) Q:QANAA'>0!(QANIEN'>0)  D
 . . D INCD
TASK ;Call to ^%ZTLOAD
 K IOP,%ZIS S %ZIS("A")="Print on device: ",%ZIS="MQ" W ! D ^%ZIS W !!
 G:POP KILL
 I $D(IO("Q")) S ZTRTN="START^QANOPEN",ZTDESC="Open Incident/Patient report." D ZLOOP,^%ZTLOAD W !,$S($D(ZTSK):"Request Queued!",1:"Request Cancelled!"),! G EXIT
START ;
 U IO W @IOF
 I '$D(^TMP("QAN",$J)) D HDH W !!!!!?(IOM-$L(QANHD(3))\2),QANHD(3) G EXIT
 S QANCC=""
 F  S QANCC=$O(^TMP("QAN",$J,"DIV",QANCC)) Q:QANCC']""  D
 . I QANCC>0 S Y=QANCC I Y]"" S C=$P(^DD(742.4,52,0),U,2) D Y^DIQ S QANDIVN=Y
 . I QANCC=0 S QANDIVN="Unknown"
 . S QANHD(4)="Report for Division: "_QANDIVN
 . W @IOF D HDR
 . S QAN0=0
 . F  S QAN0=$O(^TMP("QAN",$J,"DIV",QANCC,QAN0)) Q:QAN0'>0  D
 . . S QAN1=0
 . . F  S QAN1=$O(^TMP("QAN",$J,QAN0,QAN1)) Q:QAN1'>0!(QANXIT)  D OUT1
EXIT ;Close device
 W ! D ^%ZISC,HOME^%ZIS
KILL ;Kill and quit
 K %ZIS,C,D,DIC,DIR,POP,QA,QAN0,QAN1,QANCASE,QANDATE,QANDFN,QANHD,QANIEN
 K QANINCD,QANLCS,QANLN,QANPAT,QANPG,QANPRS,QANPT,QANTDY,QANXIT,QANZER0
 K DTOUT,DIRUT,DIROUT,DUOUT,QANZERO,QAQ,X,Y,ZTDESC,ZTRTN,ZTSAVE,ZTSK
 K ^TMP("QAN",$J)
 Q
HDH ;End of Screen interface
 I $E(IOST)="C" K DIR S DIR(0)="E" D ^DIR S:+Y=0 QANXIT=1 Q:QANXIT
 W @IOF D HDR
 Q
HDR ;Standard header
 S QANPG=QANPG+1
 W !,?63,"Date: ",?69,QANTDY,!?63,"Page: ",?69,QANPG
 W !?(IOM-$L(QANHD(0))\2),QANHD(0)
 W !?(IOM-$L(QANHD(1))\2),QANHD(1)
 W !?(IOM-$L(QANHD(2))\2),QANHD(2)
 I $G(QANDVFLG)=1,($G(QANHD(4))]"") W !?(IOM-$L(QANHD(4))\2),QANHD(4)
 F QAQ=1:1:2 W !,QANLN
 Q
INCD ;Incident data
 S QANZERO=$G(^QA(742.4,QANIEN,0)) Q:QANZERO']""
 S QANDIV=$P(QANZERO,U,22)
 I $G(QAN1DIV)]"" Q:QAN1DIV'=QANDIV
 I '$G(QANDVFLG) S QANDIV=0
 I $G(QANDVFLG)=1 D DIV
 S ^TMP("QAN",$J,"DIV",QANDIV,QANIEN)=""
 S QANCASE=$P(QANZERO,U),QANINCD=$P(QANZERO,U,2),QANDATE=$P(QANZERO,U,3)
 S Y=QANINCD I Y]"" S C=$P(^DD(742.4,.02,0),U,2) D Y^DIQ S QANINCD=Y
 S Y=QANDATE I Y]"" S C=$P(^DD(742.4,.03,0),U,2) D Y^DIQ S QANDATE=Y
 S ^TMP("QAN",$J,QANIEN,"CASE")=$S(QANCASE]"":QANCASE,1:"N/A")
 S ^TMP("QAN",$J,QANIEN,"INCD")=$S(QANINCD]"":QANINCD,1:"N/A")
 S ^TMP("QAN",$J,QANIEN,"DATE")=$S(QANDATE]"":QANDATE,1:"N/A")
 F QANDFN=0:0 S QANDFN=$O(^QA(742,"BCS",QANIEN,QANDFN)) Q:QANDFN'>0  D PAT
 Q
OUT1 ;Output data/results
 I $Y>(IOSL-6) D HDH Q:QANXIT
 W !!,"Case Number: ",$G(^TMP("QAN",$J,QAN0,"CASE")),?30,"Incident: ",$G(^TMP("QAN",$J,QAN0,"INCD"))
 W !,"Date: ",$G(^TMP("QAN",$J,QAN0,"DATE")),?30,"Patient: ",$G(^TMP("QAN",$J,QAN0,QAN1,"PAT"))
 Q
PAT ;Patient information
 S QANZER0=$G(^QA(742,QANDFN,0)) Q:QANZER0']""
 S QANPRS=+$P(QANZER0,U,12),QANPT=+$P(QANZER0,U)
 I $G(^DPT(QANPT,0))]"" S QANPAT=$P(^DPT(QANPT,0),U)_$S(QANPRS<0:" (d)",QANPRS=0:" (c)",1:"")
 I $G(^DPT(QANPT,0))']"" S QANPAT="N/A"
 S ^TMP("QAN",$J,QANIEN,QANDFN,"PAT")=QANPAT
 Q
ZLOOP ;Ztsave variable for ^%ZTLOAD
 F QA="QA*","^TMP(""QAN"",$J," S ZTSAVE(QA)=""
 Q
DIV ;
 S (QANBB,QANOK)=0
 F  S QANBB=$O(^QA(740,1,"QAN2",QANBB)) Q:QANBB'>0!($G(QANOK))  D
 . I QANDIV=^QA(740,1,"QAN2",QANBB,0) S QANOK=1
 I $G(QANOK)'=1 S QANDIV=0
 S QANOK=0
 Q
