IBDEI05W ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,2159,1,4,0)
 ;;=4^I45.19
 ;;^UTILITY(U,$J,358.3,2159,2)
 ;;=^5007213
 ;;^UTILITY(U,$J,358.3,2160,0)
 ;;=I45.10^^19^190^38
 ;;^UTILITY(U,$J,358.3,2160,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2160,1,3,0)
 ;;=3^Right Bundle-Branch Block,Unspec
 ;;^UTILITY(U,$J,358.3,2160,1,4,0)
 ;;=4^I45.10
 ;;^UTILITY(U,$J,358.3,2160,2)
 ;;=^5007212
 ;;^UTILITY(U,$J,358.3,2161,0)
 ;;=I45.2^^19^190^8
 ;;^UTILITY(U,$J,358.3,2161,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2161,1,3,0)
 ;;=3^Bifascicular Block
 ;;^UTILITY(U,$J,358.3,2161,1,4,0)
 ;;=4^I45.2
 ;;^UTILITY(U,$J,358.3,2161,2)
 ;;=^5007214
 ;;^UTILITY(U,$J,358.3,2162,0)
 ;;=I45.3^^19^190^42
 ;;^UTILITY(U,$J,358.3,2162,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2162,1,3,0)
 ;;=3^Trifascicular Block
 ;;^UTILITY(U,$J,358.3,2162,1,4,0)
 ;;=4^I45.3
 ;;^UTILITY(U,$J,358.3,2162,2)
 ;;=^269726
 ;;^UTILITY(U,$J,358.3,2163,0)
 ;;=I45.5^^19^190^21
 ;;^UTILITY(U,$J,358.3,2163,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2163,1,3,0)
 ;;=3^Heart Block,Oth Specified
 ;;^UTILITY(U,$J,358.3,2163,1,4,0)
 ;;=4^I45.5
 ;;^UTILITY(U,$J,358.3,2163,2)
 ;;=^5007216
 ;;^UTILITY(U,$J,358.3,2164,0)
 ;;=I45.6^^19^190^31
 ;;^UTILITY(U,$J,358.3,2164,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2164,1,3,0)
 ;;=3^Pre-Excitation Syndrome
 ;;^UTILITY(U,$J,358.3,2164,1,4,0)
 ;;=4^I45.6
 ;;^UTILITY(U,$J,358.3,2164,2)
 ;;=^5007217
 ;;^UTILITY(U,$J,358.3,2165,0)
 ;;=I45.81^^19^190^25
 ;;^UTILITY(U,$J,358.3,2165,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2165,1,3,0)
 ;;=3^Long QT Syndrome
 ;;^UTILITY(U,$J,358.3,2165,1,4,0)
 ;;=4^I45.81
 ;;^UTILITY(U,$J,358.3,2165,2)
 ;;=^71760
 ;;^UTILITY(U,$J,358.3,2166,0)
 ;;=I45.9^^19^190^16
 ;;^UTILITY(U,$J,358.3,2166,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2166,1,3,0)
 ;;=3^Conduction Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,2166,1,4,0)
 ;;=4^I45.9
 ;;^UTILITY(U,$J,358.3,2166,2)
 ;;=^5007218
 ;;^UTILITY(U,$J,358.3,2167,0)
 ;;=I47.1^^19^190^41
 ;;^UTILITY(U,$J,358.3,2167,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2167,1,3,0)
 ;;=3^Supraventricular Tachycardia
 ;;^UTILITY(U,$J,358.3,2167,1,4,0)
 ;;=4^I47.1
 ;;^UTILITY(U,$J,358.3,2167,2)
 ;;=^5007223
 ;;^UTILITY(U,$J,358.3,2168,0)
 ;;=I49.3^^19^190^45
 ;;^UTILITY(U,$J,358.3,2168,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2168,1,3,0)
 ;;=3^Ventricular Premature Depolarization
 ;;^UTILITY(U,$J,358.3,2168,1,4,0)
 ;;=4^I49.3
 ;;^UTILITY(U,$J,358.3,2168,2)
 ;;=^5007233
 ;;^UTILITY(U,$J,358.3,2169,0)
 ;;=I47.0^^19^190^36
 ;;^UTILITY(U,$J,358.3,2169,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2169,1,3,0)
 ;;=3^Re-entry Ventricular Arrhythmia
 ;;^UTILITY(U,$J,358.3,2169,1,4,0)
 ;;=4^I47.0
 ;;^UTILITY(U,$J,358.3,2169,2)
 ;;=^5007222
 ;;^UTILITY(U,$J,358.3,2170,0)
 ;;=I47.2^^19^190^46
 ;;^UTILITY(U,$J,358.3,2170,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2170,1,3,0)
 ;;=3^Ventricular Tachycardia
 ;;^UTILITY(U,$J,358.3,2170,1,4,0)
 ;;=4^I47.2
 ;;^UTILITY(U,$J,358.3,2170,2)
 ;;=^125976
 ;;^UTILITY(U,$J,358.3,2171,0)
 ;;=I47.9^^19^190^29
 ;;^UTILITY(U,$J,358.3,2171,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2171,1,3,0)
 ;;=3^Paroxysmal Tachycardia,Unspec
 ;;^UTILITY(U,$J,358.3,2171,1,4,0)
 ;;=4^I47.9
 ;;^UTILITY(U,$J,358.3,2171,2)
 ;;=^5007224
 ;;^UTILITY(U,$J,358.3,2172,0)
 ;;=I48.0^^19^190^28
 ;;^UTILITY(U,$J,358.3,2172,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2172,1,3,0)
 ;;=3^Paroxysmal Atrial Fibrillation
 ;;^UTILITY(U,$J,358.3,2172,1,4,0)
 ;;=4^I48.0
 ;;^UTILITY(U,$J,358.3,2172,2)
 ;;=^90473
 ;;^UTILITY(U,$J,358.3,2173,0)
 ;;=I48.1^^19^190^30
 ;;^UTILITY(U,$J,358.3,2173,1,0)
 ;;=^358.31IA^4^2
