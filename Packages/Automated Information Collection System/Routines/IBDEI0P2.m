IBDEI0P2 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,11473,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11473,1,3,0)
 ;;=3^Breathing Abnormalities,Other
 ;;^UTILITY(U,$J,358.3,11473,1,4,0)
 ;;=4^R06.89
 ;;^UTILITY(U,$J,358.3,11473,2)
 ;;=^5019193
 ;;^UTILITY(U,$J,358.3,11474,0)
 ;;=R06.83^^68^685^54
 ;;^UTILITY(U,$J,358.3,11474,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11474,1,3,0)
 ;;=3^Snoring
 ;;^UTILITY(U,$J,358.3,11474,1,4,0)
 ;;=4^R06.83
 ;;^UTILITY(U,$J,358.3,11474,2)
 ;;=^5019192
 ;;^UTILITY(U,$J,358.3,11475,0)
 ;;=R06.3^^68^685^32
 ;;^UTILITY(U,$J,358.3,11475,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11475,1,3,0)
 ;;=3^Periodic Breathing
 ;;^UTILITY(U,$J,358.3,11475,1,4,0)
 ;;=4^R06.3
 ;;^UTILITY(U,$J,358.3,11475,2)
 ;;=^5019185
 ;;^UTILITY(U,$J,358.3,11476,0)
 ;;=R06.1^^68^685^56
 ;;^UTILITY(U,$J,358.3,11476,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11476,1,3,0)
 ;;=3^Stridor
 ;;^UTILITY(U,$J,358.3,11476,1,4,0)
 ;;=4^R06.1
 ;;^UTILITY(U,$J,358.3,11476,2)
 ;;=^5019183
 ;;^UTILITY(U,$J,358.3,11477,0)
 ;;=R05.^^68^685^15
 ;;^UTILITY(U,$J,358.3,11477,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11477,1,3,0)
 ;;=3^Cough
 ;;^UTILITY(U,$J,358.3,11477,1,4,0)
 ;;=4^R05.
 ;;^UTILITY(U,$J,358.3,11477,2)
 ;;=^5019179
 ;;^UTILITY(U,$J,358.3,11478,0)
 ;;=R04.2^^68^685^24
 ;;^UTILITY(U,$J,358.3,11478,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11478,1,3,0)
 ;;=3^Hemoptysis
 ;;^UTILITY(U,$J,358.3,11478,1,4,0)
 ;;=4^R04.2
 ;;^UTILITY(U,$J,358.3,11478,2)
 ;;=^5019175
 ;;^UTILITY(U,$J,358.3,11479,0)
 ;;=R91.8^^68^685^1
 ;;^UTILITY(U,$J,358.3,11479,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11479,1,3,0)
 ;;=3^Abnormal Finding of Lung Field,Other Nonspecific
 ;;^UTILITY(U,$J,358.3,11479,1,4,0)
 ;;=4^R91.8
 ;;^UTILITY(U,$J,358.3,11479,2)
 ;;=^5019708
 ;;^UTILITY(U,$J,358.3,11480,0)
 ;;=R06.2^^68^685^57
 ;;^UTILITY(U,$J,358.3,11480,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11480,1,3,0)
 ;;=3^Wheezing
 ;;^UTILITY(U,$J,358.3,11480,1,4,0)
 ;;=4^R06.2
 ;;^UTILITY(U,$J,358.3,11480,2)
 ;;=^5019184
 ;;^UTILITY(U,$J,358.3,11481,0)
 ;;=J44.0^^68^685^13
 ;;^UTILITY(U,$J,358.3,11481,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11481,1,3,0)
 ;;=3^COPD w/ Acute Lower Respiratory Infection
 ;;^UTILITY(U,$J,358.3,11481,1,4,0)
 ;;=4^J44.0
 ;;^UTILITY(U,$J,358.3,11481,2)
 ;;=^5008239
 ;;^UTILITY(U,$J,358.3,11482,0)
 ;;=J94.1^^68^685^23
 ;;^UTILITY(U,$J,358.3,11482,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11482,1,3,0)
 ;;=3^Fibrothorax
 ;;^UTILITY(U,$J,358.3,11482,1,4,0)
 ;;=4^J94.1
 ;;^UTILITY(U,$J,358.3,11482,2)
 ;;=^5008317
 ;;^UTILITY(U,$J,358.3,11483,0)
 ;;=G47.33^^68^685^31
 ;;^UTILITY(U,$J,358.3,11483,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11483,1,3,0)
 ;;=3^Obstructive Sleep Apnea
 ;;^UTILITY(U,$J,358.3,11483,1,4,0)
 ;;=4^G47.33
 ;;^UTILITY(U,$J,358.3,11483,2)
 ;;=^332763
 ;;^UTILITY(U,$J,358.3,11484,0)
 ;;=R91.1^^68^685^55
 ;;^UTILITY(U,$J,358.3,11484,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11484,1,3,0)
 ;;=3^Solitary Pulmonary Nodule
 ;;^UTILITY(U,$J,358.3,11484,1,4,0)
 ;;=4^R91.1
 ;;^UTILITY(U,$J,358.3,11484,2)
 ;;=^5019707
 ;;^UTILITY(U,$J,358.3,11485,0)
 ;;=T74.21XA^^68^686^1
 ;;^UTILITY(U,$J,358.3,11485,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11485,1,3,0)
 ;;=3^Adult Sexual Abuse,Confirmed,Init Encntr
 ;;^UTILITY(U,$J,358.3,11485,1,4,0)
 ;;=4^T74.21XA
 ;;^UTILITY(U,$J,358.3,11485,2)
 ;;=^5054152
 ;;^UTILITY(U,$J,358.3,11486,0)
 ;;=T76.21XA^^68^686^4
 ;;^UTILITY(U,$J,358.3,11486,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11486,1,3,0)
 ;;=3^Adult Sexual Abuse,Suspected,Init Encntr
 ;;^UTILITY(U,$J,358.3,11486,1,4,0)
 ;;=4^T76.21XA
