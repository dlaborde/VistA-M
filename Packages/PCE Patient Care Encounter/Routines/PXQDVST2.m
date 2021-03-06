PXQDVST2 ;ISL/JVS - DISPLAY ENCOUNTERS-INTERNAL POINTER ;8/29/96  10:30
 ;;1.0;PCE PATIENT CARE ENCOUNTER;**4**;Aug 12, 1996
 ;
 ;
EN02 ;---SECOND Main entry point
 ;
 ;
 D DVST42("BEGIN")
 W IOINORM
 Q
 ;
 ;
DVST42(SIGN) ;--Display the ENCOUNTERS
 ;
 ;SIGN=
 ; '+' add 10 to the starting point in ^TMP("PXBDVST",$J)
 ; '-' subtract 10 from the starting point but not less that 0
 ; 'BEGIN' start at the beginning
 ; 'SAME' start stays where it's at
 ; '3'--any number set start to that number
 ;
 N PXBSTART
 I SIGN="BEGIN" S ^TMP("PXBDVST",$J,"START")=0,PXBSTART=0
 I SIGN="SAME" S PXBSTART=^TMP("PXBDVST",$J,"START")
 I SIGN="+" S PXBSTART=($G(^TMP("PXBDVST",$J,"START"))+(10)) S:PXBSTART'<PXBCNT PXBSTART=(PXBCNT-(10)) S ^TMP("PXBDVST",$J,"START")=PXBSTART
 I SIGN="-" S PXBSTART=$G(^TMP("PXBDVST",$J,"START"))-10,^TMP("PXBDVST",$J,"START")=PXBSTART I PXBSTART<0 S PXBSTART=0 S ^TMP("PXBDVST",$J,"START")=0
 I +SIGN>0&(SIGN#10) S PXBSTART=$P((SIGN/10),".")*10 S:PXBSTART<10 PXBSTART=0  Q:^TMP("PXBDVST",$J,"START")=PXBSTART  S ^TMP("PXBDVST",$J,"START")=PXBSTART
 I +SIGN>0&'(SIGN#10) S PXBSTART=(($P((SIGN/10),".")*10)-10) S:PXBSTART<10 PXBSTART=0 Q:^TMP("PXBDVST",$J,"START")=PXBSTART  S ^TMP("PXBDVST",$J,"START")=PXBSTART
 ;
 ;
 I SIGN'="BEGIN" D LOC^PXBCC(3,0) W IOEDEOP
HEAD42 ;--HEADER ON LIST
 S HEAD="- - "_$G(PXBCNT)_"  E N C O U N T E R S - -"
 W IOINHI,!,IOCUU,?(IOM-$L(HEAD))\2,HEAD ;--F  W $C(32) Q:$X=(IOM-(4))
 W IOINLOW,IOELEOL K HEAD
 ;
 ;
 N ENTRY,J
 D UNDON^PXBCC
 W !,"No.",?5,"IEN",?15,"DATE/TIME",?31,"CLINIC",?38,"CATE",?43,"TYPE",?48,"APP`NT",?55,"DISP",?60,"HIST"
 W IOEDEOP
 D UNDOFF^PXBCC
 I '$D(^TMP("PXBSAM",$J)) D NONE^PXBUTL(6)
 ;
 S J=PXBSTART F  S J=$O(^TMP("PXBSAM",$J,J)) Q:J=""  Q:J=(PXBSTART+(11))  D
 .S ENTRY=$G(^TMP("PXBSAM",$J,J)),PXBHIGH=$S($G(PXBHIGH)>J:$G(PXBHIGH),$G(PXBHIGH)<J:J,1:$G(PXBHIGH))
 .W !,J,?5,$P(ENTRY,"^",1),?15,$P(ENTRY,"^",2),?32,$P(ENTRY,"^",3),?39,$P(ENTRY,"^",4),?44,$P(ENTRY,"^",5),?48,$P(ENTRY,"^",6),?55,$P(ENTRY,"^",7),?60,$P(ENTRY,"^",8)
 I J="",$G(PXBCNT)'<1 D HELP1^PXBUTL1("LST")
 I SIGN'="BEGIN" W !!
 Q
