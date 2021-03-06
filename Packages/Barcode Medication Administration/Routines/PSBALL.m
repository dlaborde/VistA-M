PSBALL ;BIRMINGHAM/VRN-BCMA RPC BROKER CALLS ;Mar 2004
 ;;3.0;BAR CODE MED ADMIN;;Mar 2004
 ;
 ; Reference/IA
 ; EN1^GMRADPT/10099
 ;
ALLR(RESULTS,DFN) ; Return array of patient allergies/adverse reactions
 ;
 ;RPC: PSB ALLERGY
 ;
 D SORT
 Q
 ;
SORT ;*** Set up the allergies and adv. reactions arrays.
 S PSBCNT=1,(PSBALC,PSBARC)=0
 S GMRA="0^0^111" D EN1^GMRADPT
 I GMRAL="" S RESULTS(0)=1,RESULTS(1)="ALL"_U_"No Allergy Assessment" Q
 I GMRAL=0 S RESULTS(0)=1,RESULTS(1)="ALL"_U_"No Known Allergies" Q
 F X=0:0 S X=$O(GMRAL(X)) Q:'X  S PSBTYP=$P(GMRAL(X),U,5),PSBNM=$P(GMRAL(X),U,2) D
 .S:PSBTYP=0 PSBALC=PSBALC+1,PSBALG(PSBNM)=""
 .S:PSBTYP>0 PSBARC=PSBARC+1,PSBADR(PSBNM)=""
 S (X,Y)="" F  S X=$O(PSBALG(X)) Q:X=""  S Y="ALL"_U_X,RESULTS(PSBCNT)=Y,PSBCNT=PSBCNT+1
 S (X,Y)="" F  S X=$O(PSBADR(X)) Q:X=""  S Y="ADR"_U_X,RESULTS(PSBCNT)=Y,PSBCNT=PSBCNT+1
 S RESULTS(0)=PSBCNT-1
 K GMRA,GMRAL,PSBADR,PSBALC,PSBALG,PSBARC,PSBCNT,PSBNM,PSBTYP
 Q
 ;
