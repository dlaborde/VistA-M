IBDEI10C ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,16759,1,3,0)
 ;;=3^Urethritis,Nonspecific
 ;;^UTILITY(U,$J,358.3,16759,1,4,0)
 ;;=4^N34.1
 ;;^UTILITY(U,$J,358.3,16759,2)
 ;;=^5015655
 ;;^UTILITY(U,$J,358.3,16760,0)
 ;;=N34.3^^88^853^85
 ;;^UTILITY(U,$J,358.3,16760,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16760,1,3,0)
 ;;=3^Urethral Syndrome,Unspec
 ;;^UTILITY(U,$J,358.3,16760,1,4,0)
 ;;=4^N34.3
 ;;^UTILITY(U,$J,358.3,16760,2)
 ;;=^5015656
 ;;^UTILITY(U,$J,358.3,16761,0)
 ;;=Z87.442^^88^853^58
 ;;^UTILITY(U,$J,358.3,16761,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16761,1,3,0)
 ;;=3^Personal Hx of Urinary Calculi
 ;;^UTILITY(U,$J,358.3,16761,1,4,0)
 ;;=4^Z87.442
 ;;^UTILITY(U,$J,358.3,16761,2)
 ;;=^5063497
 ;;^UTILITY(U,$J,358.3,16762,0)
 ;;=R35.0^^88^853^88
 ;;^UTILITY(U,$J,358.3,16762,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16762,1,3,0)
 ;;=3^Urinary Frequency
 ;;^UTILITY(U,$J,358.3,16762,1,4,0)
 ;;=4^R35.0
 ;;^UTILITY(U,$J,358.3,16762,2)
 ;;=^5019334
 ;;^UTILITY(U,$J,358.3,16763,0)
 ;;=N39.42^^88^853^89
 ;;^UTILITY(U,$J,358.3,16763,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16763,1,3,0)
 ;;=3^Urinary Incontinence w/o Sensory Awareness
 ;;^UTILITY(U,$J,358.3,16763,1,4,0)
 ;;=4^N39.42
 ;;^UTILITY(U,$J,358.3,16763,2)
 ;;=^5015681
 ;;^UTILITY(U,$J,358.3,16764,0)
 ;;=N39.45^^88^853^90
 ;;^UTILITY(U,$J,358.3,16764,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16764,1,3,0)
 ;;=3^Urinary Incontinence,Continuous Leakage
 ;;^UTILITY(U,$J,358.3,16764,1,4,0)
 ;;=4^N39.45
 ;;^UTILITY(U,$J,358.3,16764,2)
 ;;=^5015684
 ;;^UTILITY(U,$J,358.3,16765,0)
 ;;=R39.81^^88^853^91
 ;;^UTILITY(U,$J,358.3,16765,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16765,1,3,0)
 ;;=3^Urinary Incontinence,Functional
 ;;^UTILITY(U,$J,358.3,16765,1,4,0)
 ;;=4^R39.81
 ;;^UTILITY(U,$J,358.3,16765,2)
 ;;=^5019349
 ;;^UTILITY(U,$J,358.3,16766,0)
 ;;=N39.46^^88^853^92
 ;;^UTILITY(U,$J,358.3,16766,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16766,1,3,0)
 ;;=3^Urinary Incontinence,Mixed,Male/Female
 ;;^UTILITY(U,$J,358.3,16766,1,4,0)
 ;;=4^N39.46
 ;;^UTILITY(U,$J,358.3,16766,2)
 ;;=^5015685
 ;;^UTILITY(U,$J,358.3,16767,0)
 ;;=N39.44^^88^853^93
 ;;^UTILITY(U,$J,358.3,16767,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16767,1,3,0)
 ;;=3^Urinary Incontinence,Nocturnal Enuresis
 ;;^UTILITY(U,$J,358.3,16767,1,4,0)
 ;;=4^N39.44
 ;;^UTILITY(U,$J,358.3,16767,2)
 ;;=^5015683
 ;;^UTILITY(U,$J,358.3,16768,0)
 ;;=N39.498^^88^853^94
 ;;^UTILITY(U,$J,358.3,16768,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16768,1,3,0)
 ;;=3^Urinary Incontinence,Other
 ;;^UTILITY(U,$J,358.3,16768,1,4,0)
 ;;=4^N39.498
 ;;^UTILITY(U,$J,358.3,16768,2)
 ;;=^5015686
 ;;^UTILITY(U,$J,358.3,16769,0)
 ;;=N39.490^^88^853^95
 ;;^UTILITY(U,$J,358.3,16769,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16769,1,3,0)
 ;;=3^Urinary Incontinence,Overflow
 ;;^UTILITY(U,$J,358.3,16769,1,4,0)
 ;;=4^N39.490
 ;;^UTILITY(U,$J,358.3,16769,2)
 ;;=^331569
 ;;^UTILITY(U,$J,358.3,16770,0)
 ;;=N39.43^^88^853^96
 ;;^UTILITY(U,$J,358.3,16770,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16770,1,3,0)
 ;;=3^Urinary Incontinence,Post-Void Dribbling
 ;;^UTILITY(U,$J,358.3,16770,1,4,0)
 ;;=4^N39.43
 ;;^UTILITY(U,$J,358.3,16770,2)
 ;;=^5015682
 ;;^UTILITY(U,$J,358.3,16771,0)
 ;;=N39.3^^88^853^97
 ;;^UTILITY(U,$J,358.3,16771,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16771,1,3,0)
 ;;=3^Urinary Incontinence,Stress,Male/Female
 ;;^UTILITY(U,$J,358.3,16771,1,4,0)
 ;;=4^N39.3
 ;;^UTILITY(U,$J,358.3,16771,2)
 ;;=^5015679
 ;;^UTILITY(U,$J,358.3,16772,0)
 ;;=R32.^^88^853^98
 ;;^UTILITY(U,$J,358.3,16772,1,0)
 ;;=^358.31IA^4^2
