YTDESC ;SLC/TGA-LIST TEST/INTERVIEW DESCRIPTIONS ; 7/14/89  12:36 ;
 ;;5.01;MENTAL HEALTH;;Dec 30, 1994
 ;
1 ;
 W @IOF S P0=$S(IOST?1"P".E:1,1:0),P1=$S(P0:8,1:3)
 S YSINS="TEST",YSN="" F  S YSN=$O(^YTT(601,"ATN","T",YSN)) Q:YSN=""!YSLFT  S T=$O(^YTT(601,"ATN","T",YSN,0)) D TC,TL
 G:YSLFT END S YSINS="INTERVIEW",YSN="" F  S YSN=$O(^YTT(601,"ATN","I",YSN)) Q:YSN=""!YSLFT  S T=$O(^YTT(601,"ATN","I",YSN,0)) D TC,IL
END ;
 K K,P0,P1,T,X,Y,YSINS,YSN Q
TC ;
 D:$Y+P1+5>IOSL CK Q:YSLFT  W:P0 !! S X=$P(^YTT(601,T,"P"),U) W ?(80-$L(X)\2),X S X=^YTT(601,T,0) W !! W YSINS," CODE = ",$P(X,U),! Q
TL ;
 W !,"AUTHOR     : " W:$D(^YTT(601,T,1)) ^(1)
 W !,"PUBLISHER  : " W:$D(^YTT(601,T,2)) ^(2)
 W !,"FORM       : " W:$D(^YTT(601,T,3)) ^(3)
 W !,"NO. ITEMS  : " W $P(X,U,11)
 D:$Y+P1+3>IOSL CK Q:YSLFT  W !!,"--- S C A L E S ---",! F K=1:1 Q:'$D(^YTT(601,T,"S",K,0))  S X=$P(^(0),U,2) Q:X=""  D:$Y+P1>IOSL CK Q:YSLFT  W !,X
 D:$Y+P1+3>IOSL CK Q:YSLFT  W !!,"NORMATIVE DATA:",! F K=1:1 Q:'$D(^YTT(601,T,6,K,0))  D:$Y+P1>IOSL CK Q:YSLFT  W !?5,^(0)
 D:$Y+P1+3>IOSL CK Q:YSLFT  W !!,"TEST USES:",! F K=1:1 Q:'$D(^YTT(601,T,7,K,0))  D:$Y+P1>IOSL CK Q:YSLFT  W !?5,^(0)
 G:'$D(^YTT(601,T,8)) T1 D:$Y+P1+3>IOSL CK Q:YSLFT  W !!,"INTERPRETIVE REPORT: ",! F K=1:1 Q:'$D(^YTT(601,T,8,K,0))  D:$Y+P1>IOSL CK Q:YSLFT  W !,^(0)
T1 ;
 D:'P0 CK Q
IL ;
 W !,"NUMBER OF ITEMS: ",$P(X,U,11)
 W !,"SOURCE:",! F K=1:1 Q:'$D(^YTT(601,T,4,K,0))  D:$Y+P1>IOSL CK Q:YSLFT  W !?5,^(0)
 W !!,"DESCRIPTION:" F K=1:1 Q:'$D(^YTT(601,T,5,K,0))  D:$Y+P1>IOSL CK Q:YSLFT  W !?5,^(0)
 D:'P0 CK Q
CK ;
 D:'P0 WAIT^YSUTL Q:YSLFT  W @IOF Q
