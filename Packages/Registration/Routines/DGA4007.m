DGA4007 ;ALB/MAF - BALANCE AMIS - AMIS SEGMENTS 401 - 420 ; AUG 23, 1990@1200
 ;;5.3;Registration;;Aug 13, 1993
 S (DGCT,DGCT(1),DGCT(2),DGCT(3),DGCT(4),DGCT(5),DGCT(6),DGCT(7),DGCTEOM)=0
 F X=2:1:15,22:1:25,30:1:33,38:1:40 S DGCT=DGCT+$P(DGN,"^",X)
 S X1=DGA,X2=-31 D C^%DTC S X=$E(X,1,5)_"00" I $D(^DG(391.1,DGI,"D",1,"MY",X,"A1")) S DGCTEOM=$S($P(^DG(391.1,DGI,"D",1,"MY",X,"A1"),"^",38)]"":$P(^("A1"),"^",38),1:0) S DGCT=DGCT+DGCTEOM
 F X=11:1:15 S DGCT(1)=DGCT(1)+$P(DGN,"^",X)
 F X=16:1:19 S DGCT(2)=DGCT(2)+$P(DGN,"^",X)
 F X=20:1:21 S DGCT(3)=DGCT(3)+$P(DGN,"^",X)
 F X=22:1:25 S DGCT(4)=DGCT(4)+$P(DGN,"^",X)
 F X=26:1:29 S DGCT(5)=DGCT(5)+$P(DGN,"^",X)
 F X=30:1:33 S DGCT(6)=DGCT(6)+$P(DGN,"^",X)
 F X=34:1:37 S DGCT(7)=DGCT(7)+$P(DGN,"^",X)
 I DGCT=$P(DGN,"^",1)+DGCTEOM,DGCT(1)=DGCT(2),DGCT(1)=DGCT(3),DGCT(4)=DGCT(5),DGCT(6)=DGCT(7) S DGFLG=1 Q
 S DGUB(DGI)="" Q
 K ^UTILITY($J,"DGSEG",DGI,DGI1) Q
