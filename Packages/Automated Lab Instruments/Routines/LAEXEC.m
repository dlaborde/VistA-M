LAEXEC ;SLC/RWF - ABBOTT EXECUTIVE ;7/20/90  08:22 ;
 ;;5.2;AUTOMATED LAB INSTRUMENTS;;Sep 27, 1994
 ;CROSS LINK BY ID OR IDE
LA1 S:$D(ZTQUEUED) ZTREQ="@" S LANM=$T(+0),TSK=$O(^LAB(62.4,"C",LANM,0)) Q:TSK<1
 Q:'$D(^LA(TSK,"I",0))
 K LATOP D ^LASET Q:'TSK  S X="TRAP^"_LANM,@^%ZOSF("TRAP")
LA2 K TV S TOUT=0 D IN G QUIT:TOUT,LA2:+IN'=1
LA2A S V=$E(IN,6,9) D NUM S CUP=+V,TRAY=1,V=$E(IN,10,18) D NUM S (ID,IDE)=+V
 F I=0:0 S TOUT=0 D IN G QUIT:TOUT Q:+IN=3
 I $E(IN,26,27)'="02" S V=$E(IN,2,5) D NUM S TEST=V,V=$E(IN,20,26) D NUM S V=+V D:V LA2B
 F I=0:0 S TOUT=0 D IN G QUIT:TOUT Q:+IN'=3  I $E(IN,26,27)'="02" S V=$E(IN,2,5) D NUM S TEST=V,V=$E(IN,20,26) D NUM S:+V V=+V D:V LA2B
 D LA3 G LA2:+IN'=1 K TV G LA2A
LA2B F I=0:0 S I=$O(TC(I)) Q:I<1  I TEST=TC(I,4) S @TC(I,1)=$J(V,0,+TC(I,3)) Q
 Q
LA3 X LAGEN Q:'ISQN
 F I=0:0 S I=$O(TV(I)) Q:I<1  S:TV(I,1)]"" ^LAH(LWL,1,ISQN,I)=TV(I,1)
 Q
NUM S X="" F JJ=1:1:$L(V) S:$A(V,JJ)>32 X=X_$E(V,JJ)
 S V=X Q
IN S CNT=^LA(TSK,"I",0)+1 IF '$D(^(CNT)) S TOUT=TOUT+1 Q:TOUT>9  H 5 G IN
 S ^LA(TSK,"I",0)=CNT,IN=^(CNT),TOUT=0
 S:IN["~" CTRL=$P(IN,"~",2),IN=$P(IN,"~",1)
 Q
QUIT LOCK ^LA(TSK) H 1 K ^LA(TSK),^LA("LOCK",TSK),^TMP($J),^TMP("LA",$J)
 Q
TRAP D ^LABERR S T=TSK D SET^LAB G @("LA2^"_LANM) ;ERROR TRAP
