IBDEI11I ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,17313,1,3,0)
 ;;=3^Sleep Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,17313,1,4,0)
 ;;=4^F51.9
 ;;^UTILITY(U,$J,358.3,17313,2)
 ;;=^5003617
 ;;^UTILITY(U,$J,358.3,17314,0)
 ;;=G47.14^^88^860^5
 ;;^UTILITY(U,$J,358.3,17314,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17314,1,3,0)
 ;;=3^Hypersomnia d/t Medical Condition
 ;;^UTILITY(U,$J,358.3,17314,1,4,0)
 ;;=4^G47.14
 ;;^UTILITY(U,$J,358.3,17314,2)
 ;;=^5003972
 ;;^UTILITY(U,$J,358.3,17315,0)
 ;;=G47.10^^88^860^8
 ;;^UTILITY(U,$J,358.3,17315,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17315,1,3,0)
 ;;=3^Hypersomnia,Unspec
 ;;^UTILITY(U,$J,358.3,17315,1,4,0)
 ;;=4^G47.10
 ;;^UTILITY(U,$J,358.3,17315,2)
 ;;=^332926
 ;;^UTILITY(U,$J,358.3,17316,0)
 ;;=G47.01^^88^860^9
 ;;^UTILITY(U,$J,358.3,17316,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17316,1,3,0)
 ;;=3^Insomnia d/t Medical Condition
 ;;^UTILITY(U,$J,358.3,17316,1,4,0)
 ;;=4^G47.01
 ;;^UTILITY(U,$J,358.3,17316,2)
 ;;=^5003969
 ;;^UTILITY(U,$J,358.3,17317,0)
 ;;=G47.00^^88^860^17
 ;;^UTILITY(U,$J,358.3,17317,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17317,1,3,0)
 ;;=3^Insomnia,Unspec
 ;;^UTILITY(U,$J,358.3,17317,1,4,0)
 ;;=4^G47.00
 ;;^UTILITY(U,$J,358.3,17317,2)
 ;;=^332924
 ;;^UTILITY(U,$J,358.3,17318,0)
 ;;=Z72.821^^88^860^23
 ;;^UTILITY(U,$J,358.3,17318,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17318,1,3,0)
 ;;=3^Sleep Hygiene,Inadequate
 ;;^UTILITY(U,$J,358.3,17318,1,4,0)
 ;;=4^Z72.821
 ;;^UTILITY(U,$J,358.3,17318,2)
 ;;=^5063265
 ;;^UTILITY(U,$J,358.3,17319,0)
 ;;=G47.63^^88^860^24
 ;;^UTILITY(U,$J,358.3,17319,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17319,1,3,0)
 ;;=3^Sleep Related Bruxism
 ;;^UTILITY(U,$J,358.3,17319,1,4,0)
 ;;=4^G47.63
 ;;^UTILITY(U,$J,358.3,17319,2)
 ;;=^332783
 ;;^UTILITY(U,$J,358.3,17320,0)
 ;;=G47.9^^88^860^25
 ;;^UTILITY(U,$J,358.3,17320,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17320,1,3,0)
 ;;=3^Sleep Related Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,17320,1,4,0)
 ;;=4^G47.9
 ;;^UTILITY(U,$J,358.3,17320,2)
 ;;=^5003990
 ;;^UTILITY(U,$J,358.3,17321,0)
 ;;=G47.62^^88^860^26
 ;;^UTILITY(U,$J,358.3,17321,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17321,1,3,0)
 ;;=3^Sleep Related Leg Cramps
 ;;^UTILITY(U,$J,358.3,17321,1,4,0)
 ;;=4^G47.62
 ;;^UTILITY(U,$J,358.3,17321,2)
 ;;=^332782
 ;;^UTILITY(U,$J,358.3,17322,0)
 ;;=G47.61^^88^860^27
 ;;^UTILITY(U,$J,358.3,17322,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17322,1,3,0)
 ;;=3^Sleep Related Movement Disorder,Periodic
 ;;^UTILITY(U,$J,358.3,17322,1,4,0)
 ;;=4^G47.61
 ;;^UTILITY(U,$J,358.3,17322,2)
 ;;=^5003987
 ;;^UTILITY(U,$J,358.3,17323,0)
 ;;=F51.12^^88^860^28
 ;;^UTILITY(U,$J,358.3,17323,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17323,1,3,0)
 ;;=3^Sleep Syndrome,Insufficient Sleep
 ;;^UTILITY(U,$J,358.3,17323,1,4,0)
 ;;=4^F51.12
 ;;^UTILITY(U,$J,358.3,17323,2)
 ;;=^5003610
 ;;^UTILITY(U,$J,358.3,17324,0)
 ;;=F51.4^^88^860^29
 ;;^UTILITY(U,$J,358.3,17324,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17324,1,3,0)
 ;;=3^Sleep Terrors
 ;;^UTILITY(U,$J,358.3,17324,1,4,0)
 ;;=4^F51.4
 ;;^UTILITY(U,$J,358.3,17324,2)
 ;;=^5003614
 ;;^UTILITY(U,$J,358.3,17325,0)
 ;;=F51.3^^88^860^30
 ;;^UTILITY(U,$J,358.3,17325,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17325,1,3,0)
 ;;=3^Sleepwalking
 ;;^UTILITY(U,$J,358.3,17325,1,4,0)
 ;;=4^F51.3
 ;;^UTILITY(U,$J,358.3,17325,2)
 ;;=^5003613
 ;;^UTILITY(U,$J,358.3,17326,0)
 ;;=Z88.6^^88^861^2
 ;;^UTILITY(U,$J,358.3,17326,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17326,1,3,0)
 ;;=3^Allergy to Analgesic Agent
 ;;^UTILITY(U,$J,358.3,17326,1,4,0)
 ;;=4^Z88.6
