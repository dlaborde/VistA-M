IBDEI03C ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,825,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,825,1,2,0)
 ;;=2^NERVE BLK BRACHIAL PLEXUS,SNGL INJ
 ;;^UTILITY(U,$J,358.3,825,1,4,0)
 ;;=4^64415
 ;;^UTILITY(U,$J,358.3,826,0)
 ;;=64416^^11^94^3^^^^1
 ;;^UTILITY(U,$J,358.3,826,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,826,1,2,0)
 ;;=2^NERVE BLK BRACHIAL PLEXUS,CONT INFUSION
 ;;^UTILITY(U,$J,358.3,826,1,4,0)
 ;;=4^64416
 ;;^UTILITY(U,$J,358.3,827,0)
 ;;=64413^^11^94^7^^^^1
 ;;^UTILITY(U,$J,358.3,827,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,827,1,2,0)
 ;;=2^NERVE BLK CERVICAL PLEXUS,INJ
 ;;^UTILITY(U,$J,358.3,827,1,4,0)
 ;;=4^64413
 ;;^UTILITY(U,$J,358.3,828,0)
 ;;=64402^^11^94^8^^^^1
 ;;^UTILITY(U,$J,358.3,828,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,828,1,2,0)
 ;;=2^NERVE BLK FACIAL NERVE,INJ
 ;;^UTILITY(U,$J,358.3,828,1,4,0)
 ;;=4^64402
 ;;^UTILITY(U,$J,358.3,829,0)
 ;;=64447^^11^94^10^^^^1
 ;;^UTILITY(U,$J,358.3,829,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,829,1,2,0)
 ;;=2^NERVE BLK FEMORAL NERVE,SNGL INJ
 ;;^UTILITY(U,$J,358.3,829,1,4,0)
 ;;=4^64447
 ;;^UTILITY(U,$J,358.3,830,0)
 ;;=64448^^11^94^9^^^^1
 ;;^UTILITY(U,$J,358.3,830,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,830,1,2,0)
 ;;=2^NERVE BLK FEMORAL NERVE,CONT INFUSION
 ;;^UTILITY(U,$J,358.3,830,1,4,0)
 ;;=4^64448
 ;;^UTILITY(U,$J,358.3,831,0)
 ;;=64405^^11^94^11^^^^1
 ;;^UTILITY(U,$J,358.3,831,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,831,1,2,0)
 ;;=2^NERVE BLK GREATER OCCIPITAL NERVE,INJ
 ;;^UTILITY(U,$J,358.3,831,1,4,0)
 ;;=4^64405
 ;;^UTILITY(U,$J,358.3,832,0)
 ;;=64425^^11^94^12^^^^1
 ;;^UTILITY(U,$J,358.3,832,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,832,1,2,0)
 ;;=2^NERVE BLK ILIOINGUINAL/ILIOHYPOGASTRIC,INJ
 ;;^UTILITY(U,$J,358.3,832,1,4,0)
 ;;=4^64425
 ;;^UTILITY(U,$J,358.3,833,0)
 ;;=64450^^11^94^17^^^^1
 ;;^UTILITY(U,$J,358.3,833,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,833,1,2,0)
 ;;=2^NERVE BLK PERIPH NERVE/BRANCH NEC
 ;;^UTILITY(U,$J,358.3,833,1,4,0)
 ;;=4^64450
 ;;^UTILITY(U,$J,358.3,834,0)
 ;;=64508^^11^94^5^^^^1
 ;;^UTILITY(U,$J,358.3,834,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,834,1,2,0)
 ;;=2^NERVE BLK CAROTID SINUS,INJ
 ;;^UTILITY(U,$J,358.3,834,1,4,0)
 ;;=4^64508
 ;;^UTILITY(U,$J,358.3,835,0)
 ;;=64530^^11^94^6^^^^1
 ;;^UTILITY(U,$J,358.3,835,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,835,1,2,0)
 ;;=2^NERVE BLK CELIAC PLEXUS,INJ
 ;;^UTILITY(U,$J,358.3,835,1,4,0)
 ;;=4^64530
 ;;^UTILITY(U,$J,358.3,836,0)
 ;;=64520^^11^94^15^^^^1
 ;;^UTILITY(U,$J,358.3,836,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,836,1,2,0)
 ;;=2^NERVE BLK LUMBAR/THORACIC,INJ
 ;;^UTILITY(U,$J,358.3,836,1,4,0)
 ;;=4^64520
 ;;^UTILITY(U,$J,358.3,837,0)
 ;;=64505^^11^94^22^^^^1
 ;;^UTILITY(U,$J,358.3,837,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,837,1,2,0)
 ;;=2^NERVE BLK SPHEOPALATINE GANGLION
 ;;^UTILITY(U,$J,358.3,837,1,4,0)
 ;;=4^64505
 ;;^UTILITY(U,$J,358.3,838,0)
 ;;=64420^^11^94^13^^^^1
 ;;^UTILITY(U,$J,358.3,838,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,838,1,2,0)
 ;;=2^NERVE BLK INTERCOSTAL NERVE,SNGL INJ
 ;;^UTILITY(U,$J,358.3,838,1,4,0)
 ;;=4^64420
 ;;^UTILITY(U,$J,358.3,839,0)
 ;;=64421^^11^94^14^^^^1
 ;;^UTILITY(U,$J,358.3,839,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,839,1,2,0)
 ;;=2^NERVE BLK INTERCOSTAL,MULTI,REG BLK
 ;;^UTILITY(U,$J,358.3,839,1,4,0)
 ;;=4^64421
 ;;^UTILITY(U,$J,358.3,840,0)
 ;;=64435^^11^94^16^^^^1
 ;;^UTILITY(U,$J,358.3,840,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,840,1,2,0)
 ;;=2^NERVE BLK PARACERVICAL,INJ
 ;;^UTILITY(U,$J,358.3,840,1,4,0)
 ;;=4^64435
 ;;^UTILITY(U,$J,358.3,841,0)
 ;;=64410^^11^94^18^^^^1
