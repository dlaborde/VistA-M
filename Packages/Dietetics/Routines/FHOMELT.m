FHOMELT ;Hines OIFO/RTK OUTPATIENT MEALS LIST EARLY/LATE TRAYS  ;5/10/04  12:35
 ;;5.5;DIETETICS;**5**;Jan 28, 2005;Build 53
 ;patch #5 - added outpt room-bed.
 ;
 ; FHP=PTR to COMM OFFICE, DTE=DATE in FILEMAN FORMAT, MEAL=B,N,E or A
 ;K ^TMP($J)
 S X1=DTE,X2=-1 D C^%DTC S FHRMDTE=X,X1=DTE,X2=1 D C^%DTC S FHDTQ=X
 F FHOMDT=FHRMDTE:0 S FHOMDT=$O(^FHPT("RM",FHOMDT)) Q:FHOMDT=""!(FHOMDT'<FHDTQ)  D
 .F FHDFN=0:0 S FHDFN=$O(^FHPT("RM",FHOMDT,FHDFN)) Q:FHDFN=""  D
 ..F FHRNUM=0:0 S FHRNUM=$O(^FHPT("RM",FHOMDT,FHDFN,FHRNUM)) Q:FHRNUM=""  D
 ...I '$D(^FHPT(FHDFN,"OP",FHRNUM,2)) Q
 ...S FHELN0=$G(^FHPT(FHDFN,"OP",FHRNUM,0))
 ...S FHELN2=$G(^FHPT(FHDFN,"OP",FHRNUM,2))
 ...I $P(FHELN0,U,15)="C" Q
 ...I $P(FHELN2,U,6)="C" Q
 ...S FHLOC=$P(FHELN0,U,3) I FHLOC="" Q
 ...S FHCOMM=$P($G(^FH(119.6,FHLOC,0)),U,8) I FHCOMM="" Q
 ...S FHMEAL=$P(FHELN0,U,4) I MEAL'="A",MEAL'=FHMEAL Q
 ...I FHP>0,FHP'=FHCOMM Q
 ...S RM=$P(FHELN0,U,18)
 ...I $G(RM),$D(^DG(405.4,RM,0)) S RM=$P(^DG(405.4,RM,0),U,1)
 ...S FHMLTM=$P(FHELN2,U,1),FHBAG=$P(FHELN2,U,2)
 ...I $P($G(^FH(119.6,FHLOC,1)),U,4)="Y" D DIETPAT^FHOMRR1 S FHDIET=FHDIETP
 ...I $P($G(^FH(119.6,FHLOC,1)),U,4)'="Y" S FHDIET=$P(FHELN0,U,2) I FHDIET'="" S FHDIET=$P($G(^FH(111,FHDIET,0)),U,1)
 ...D PATNAME^FHOMUTL
 ...S ^TMP($J,FHMEAL,FHMLTM_"~"_FHPTNM)=FHLOC_"^"_FHDFN_"^"_FHBAG_"^"_FHDIET_"^"_$E(RM,1,10)
 ...Q
