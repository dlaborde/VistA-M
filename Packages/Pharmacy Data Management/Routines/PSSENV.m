PSSENV ;BIR/WRT-Option Delete environment check routine ; 09/09/97 15:15
 ;;1.0;PHARMACY DATA MANAGEMENT;;9/30/97
 ; ENVIRONMENTAL CHECK ROUTINE-OPTION DELETE
START I '$D(^PS(59.7,1,49.99)) S XPDQUIT=1 Q
 I $D(^PS(59.7,1,49.99)),$P(^PS(59.7,1,49.99),"^",1)<7.0 S XPDQUIT=1 Q
