SRSGRPH ;B'HAM ISC/MAM - STUFF SCHEDULING GRAPH ; 5 DEC 1991  10:00 AM
 ;;3.0; Surgery ;;24 Jun 93
 I '$D(^SRS(SRSOR,"S",SRSDATE,1)) D GRAPH K FLAG,NUMB,P,SRSDAY,SRNUMB,SRXREF,SRX1,SRX2,SRST,SRET,SRDY,X,X1,X2
 S X1=^SRS(SRSOR,"S",SRSDATE,1),(X1,^(1))=$E(X1,1,SRS1)_S_$E(X1,SRS2+1,200),^SRS(SRSOR,"S",SRSDATE,0)=SRSDATE
 S X0=^SRS(SRSOR,"SS",SRSDATE,1)
 F I=SRS1+1:1:SRS2-1 I "X="'[$E(X1,I) S X1=$E(X1,1,I-1)_$E(X0,I)_$E(X1,I+1,200)
 S ^SRS(SRSOR,"S",SRSDATE,1)=X1
 Q
GRAPH ; set graph in ^SRS
 S ^SRS(SRSOR,"S",SRSDATE,0)=SRSDATE,^SRS(SRSOR,"SS",SRSDATE,0)=SRSDATE
 S ^SRS(SRSOR,"S",SRSDATE,1)=$E(SRSDATE,4,5)_"-"_$E(SRSDATE,6,7)_"-"_$E(SRSDATE,2,3)_"  |____|____|____|____|____|____|____|____|____|____|____|____|____|____|____|____|____|____|____|____|____|____|____|____|"
 S ^SRS(SRSOR,"SS",SRSDATE,1)=^SRS(SRSOR,"S",SRSDATE,1)
 S X1=SRSDATE,X2=2830103 D ^%DTC S SRDAY=$P("MO^TU^WE^TH^FR^SA^SU","^",X#7+1),X3=X#2+8 S X1=SRSDATE,X2=$E(SRSDATE,1,5)_"01" D ^%DTC S SRDY=X\7+1
 S SRTIME=0 F  S SRTIME=$O(^SRS("R",SRDAY,SRSOR,SRTIME)) Q:SRTIME=""  S NUMB="" F  S NUMB=$O(^SRS("R",SRDAY,SRSOR,SRTIME,NUMB)) Q:NUMB=""  S SRXREF=^(NUMB),SRSDAY=$P(SRXREF,"^",2) S SRNUMB=$E(SRSDAY,3),FLAG=0 D CHNG
 Q
CHNG ; change graph
 I SRSDAY[SRDAY,SRDY=4,SRNUMB=5 S X1=SRSDATE,X2=7,X5=$E(SRSDATE,4,5) D C^%DTC I $E(X,4,5)'=X5 S FLAG=1
 I 'FLAG,SRSDAY[SRDAY,(SRNUMB=0!(SRNUMB=SRDY))!(SRNUMB=X3) S FLAG=1
 I 'FLAG Q
 S SRST=$P(SRXREF,"^",3),SRET=$P(SRXREF,"^",4),SERV=$P(SRXREF,"^",5),P=""
 S SRX1=11+((SRST\1)*5)+(SRST-(SRST\1)*100\15),SRX2=11+((SRET\1)*5)+(SRET-(SRET\1)*100\15)
 F X=SRX1:1:SRX2-1 S P=P_$S('(X#5):"|",$E(SERV,X#5)'="":$E(SERV,X#5),1:".")
 S X1=^SRS(SRSOR,"S",SRSDATE,1),^(1)=$E(X1,1,SRX1)_P_$E(X1,SRX2+1,200),^SRS(SRSOR,"SS",SRSDATE,1)=^(1),^SRS(SRSOR,"S",SRSDATE,0)=SRSDATE,^SRS(SRSOR,"SS",SRSDATE,0)=SRSDATE Q
 Q
