LRCAPR4 ;DALOI/PAC/FHS/JBM - WKLD REP GENERATOR-UTILITIES ;10/16/92 16:49
 ;;5.2;LAB SERVICE;**263**;Sep 27, 1994
BLDHDR ;
 S LRHDRLEN=0
 ;       **  Divisions  **
 S LRCODSTR="S LRDUMMY=""[ ""_LRSITSEL(A)_"" ] """
 S LRTITLE="     Division(s) "
 D ADDHDR(.LRSITSEL,LRTITLE,LRCODSTR)
 ;       **  Locations  **
 D
 . I 'LRLOC N LRLOC S LRLOC(1)=" All "
 . I $G(LRLOC)="1A" N LRLOC S LRLOC(1)=" Non Selected "
 . S LRCODSTR="S LRDUMMY=""[ ""_LRLOC(A)_"" ] """
 . S LRTITLE="     Location(s) "
 . D ADDHDR(.LRLOC,LRTITLE,LRCODSTR)
 ;       **  LEDI Collecting Sites
 D
 . I 'LRLDIV N LRLDIV S LRLDIV(1)=" All "
 . I $G(LRLDIV)="1A" N LRLDIV S LRLDIV(1)=" Non Selected "
 . S LRCODSTR="S LRDUMMY=""[ ""_LRLDIV(A)_"" ] """
 . S LRTITLE="     LEDI Location(s) "
 . D ADDHDR(.LRLDIV,LRTITLE,LRCODSTR)
 ;       **  Specimens  **
 S LRCODSTR="S LRDUMMY=""[ ""_$P($G(^LAB(61,A,0)),U)_"" ] """
 S LRTITLE="     Specimen(s) "
 D ADDHDR(.LRSP,LRTITLE,LRCODSTR)
 ;       **  Collection Samples  **
 S LRCODSTR="S LRDUMMY=""[ ""_$P($G(^LAB(62,A,0)),U)_"" ] """
 S LRTITLE="     Collection sample(s) "
 D ADDHDR(.LRCOL,LRTITLE,LRCODSTR)
 ;       **  Tests  **
 S LRCODSTR="S LRDUMMY=""[ ""_$$TST^LRCAPR2(LRTSTS(A))_"" ] """
 S LRTITLE="     Test(s) "
 D ADDHDR(.LRTSTS,LRTITLE,LRCODSTR)
 ;       **  Wkld Codes  **
 S LRCODSTR="S LRDUMMY=""[ ""_LRCAPS(A)_"" ] """
 S LRTITLE="     Workload code(s) "
 D ADDHDR(.LRCAPS,LRTITLE,LRCODSTR)
 ;       **  Instruments  **
 S LRCODSTR="S LRDUMMY=""[ ""_$P($G(^LAB(64.2,LRCPSX(A),0)),U)_"" ] """
 S LRTITLE="     Instrument(s) "
 D ADDHDR(.LRCPSX,LRTITLE,LRCODSTR)
 ;       **  Patient type  **
 S LRHDRLEN=LRHDRLEN+1
 S LRHDR(LRHDRLEN)="     Patients "
 I LRIOPAT["A" S LRHDR(LRHDRLEN)=LRHDR(LRHDRLEN)_"[ ALL PATIENTS ] "
 E  D
 . F I=1:1:$L(LRIOPAT) D
 . . S LRPTYP=$E(LRIOPAT,I)
 . . S LRHDR(LRHDRLEN)=LRHDR(LRHDRLEN)_$S(LRPTYP="I":"[ INPATIENTS ] ",LRPTYP="O":"[ OUTPATIENTS ] ",LRPTYP="R":"[ OTHER PATIENTS ] ",1:"[ UNKNOWN PATIENTS ] ")
 ;       **  STAT only?  **
 I $G(LRSTAT) D
 . S LRHDRLEN=LRHDRLEN+1
 . S LRHDR(LRHDRLEN)="     STAT tests only"
 ;
 S LRHDRFIT=$S(LRHDRLEN<12:1,1:0)
 Q
ADDHDR(LRARY,LRTITLE,LRCODSTR) ;
 N A,LRDUMMY,I
 I $O(LRARY(0)) D
 . S LRHDRLEN=LRHDRLEN+1,LRHDR(LRHDRLEN)=LRTITLE
 . S A=""
 . F I=0:0 S A=$O(LRARY(A)) Q:A=""  D
 . . X LRCODSTR
 . . I ($L(LRHDR(LRHDRLEN))+$L(LRDUMMY))>80 D
 . . . S LRHDRLEN=LRHDRLEN+1
 . . . S $P(LRHDR(LRHDRLEN)," ",$L(LRTITLE))=" "
 . . S LRHDR(LRHDRLEN)=LRHDR(LRHDRLEN)_LRDUMMY
 Q
REPHDR ;
 W !!!!!!,$E(LRSTR,1,30)_$S(LRANS="D":" D E T A I L E D *",1:" C-O-N-D-E-N-S-E-D ")_$E(LRSTR,1,31)
 W !,LRSITE_"("_LRSITNUM_")",?33,"Workload Report"
 W ?53,LRDT,?80-(6+$L(LRPG)),"page ",LRPG
 W !,"ACCN AREA: ",LRX,?79-$L(LRDTH),LRDTH S LRPG=LRPG+1
 D HDR2
 W !,LRDSH
 D PAUSE Q:LREND
 W @IOF
 Q
HDR ;
 W !!!,$E(LRSTR,1,31)_" D E T A I L E D "_$E(LRSTR,1,32)
 W !,LRSITE_"("_LRSITNUM_")",?33,"Workload Report"
 W ?53,LRDT,?80-(6+$L(LRPG)),"Page ",LRPG
 W !,"ACCN AREA: ",LRX,?79-$L(LRDTH),LRDTH S LRPG=LRPG+1
 I LRHDRFIT D HDR2
 W !,LRDSH
 W !,"Lab Test "_$S(LRCONT:" **cont.**",1:"")
 W ?33,"Instrument",?59,"Location [File #]",!
 Q
SUBH ;
 W !,LRTST,?33,LRCODE,?59,LRLC," = ",LRCPT
 W !,?3,"Accession # ",?36,"Date verified",?59,"WKLD CODE: ",LRCAP
 Q
UP ;
 S LRCONT=$S(J'=LRCPT:1,1:0)
 W ?64,$S(LRCONT:"***continued***",1:"")
 D PAUSE Q:LREND
 Q 
UP1 ;
 D PAUSE Q:LREND
 W @IOF D HDR1 W !,"cont."
 W !?((80-$L(LRSUBH1))\2),LRSUBH1
 W !?((80-$L(LRSUBH1))\2),$E(LRDSH,1,$L(LRSUBH1))
 Q
HDR1 ;
 W !!!,$E(LRSTR,1,30)_$S(LRANS="D":" D E T A I L E D *",1:" C-O-N-D-E-N-S-E-D ")_$E(LRSTR,1,31)
 W !,LRSITE_"("_LRSITNUM_")",?33,"Workload Report"
 W ?53,LRDT,?80-(6+$L(LRPG)),"page ",LRPG
 W !,"ACCN AREA: ",LRX,?79-$L(LRDTH),LRDTH S LRPG=LRPG+1
 I LRHDRFIT D HDR2
 W !,LRDSH
 Q
HDR2 ;
 Q:'LRHDRLEN  N A
 F A=1:1:LRHDRLEN W !,LRHDR(A)
 Q
PAUSE ;
 Q:$E(IOST,1,2)'="C-"
 K DIR S DIR(0)="E" D ^DIR
 S:($D(DTOUT)#2)!($D(DUOUT)#2) LREND=1
 Q
CLEAN ;
 D:'LREND PAUSE
 W @IOF D:'$D(ZTQUEUED) ^%ZISC
 K ^TMP("LR",$J)
 K %,%DT,%ZIS,DIC,DIR,DTOUT,DUOUT,DIRUT,DIROUT,I,J,K,X,Y,POP,DX,DY
 K ZTDESC,ZTIO,ZTRTN,ZTSAVE,ZTSK,LRCODSTR,LRPTYP,LRPATOK,LRCONT,LRACCREC
 K LRAA,LRAANO,LRANS,LRCAP,LRCAPS,LRCNT,LRCODE,LRCOL,LREND,LRMACN,LRTITLE
 K LRCPSX,LRCPT,LRDA,LRDAT,LRDATD,LRDATX,LRDOT,LRDSH,LRDT,LRDTH,LRFL,LRTO
 K LRFLG,LRFR,LRFRD,LRFRV,LRINST,LRLC,LRLMAC,LRLOC,LRMAC,LRTOD,LRCP,LRFIL
 K LRNT,LRNX,LRNX5,LRNX5D,LRPG,LRSITE,LRSITNUM,LRSITSEL,LRSP,LRST,LRSTCS
 K LRSTR,LRSTY,LRSUM,LRTEST,LRTESTCP,LRTMTOT,LRNODE,LRMCT,LRSTAT,LRCNTL
 K LRTSTS,LRTYCSP,LRVD,LRVERD,LRX,LRSUBH,LRSUBH1,LRHDR,LRHDRFIT,LRHDRLEN
 K LRIOPAT,LRLTYP,LRTST,LRURG,LRURGCNT,LRURGNAM,LRTOV,LRCTL,LRCPN,LRRTYP
 D WKLDCLN^LRCAPU
 Q
