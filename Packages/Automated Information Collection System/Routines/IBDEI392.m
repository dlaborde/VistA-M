IBDEI392 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,54615,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54615,1,3,0)
 ;;=3^Hypoglycemia,Unspec
 ;;^UTILITY(U,$J,358.3,54615,1,4,0)
 ;;=4^E16.2
 ;;^UTILITY(U,$J,358.3,54615,2)
 ;;=^5002708
 ;;^UTILITY(U,$J,358.3,54616,0)
 ;;=E20.0^^256^2767^34
 ;;^UTILITY(U,$J,358.3,54616,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54616,1,3,0)
 ;;=3^Idiopathic Hypoparathyroidism
 ;;^UTILITY(U,$J,358.3,54616,1,4,0)
 ;;=4^E20.0
 ;;^UTILITY(U,$J,358.3,54616,2)
 ;;=^5002712
 ;;^UTILITY(U,$J,358.3,54617,0)
 ;;=E20.9^^256^2767^30
 ;;^UTILITY(U,$J,358.3,54617,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54617,1,3,0)
 ;;=3^Hypoparathyroidism,Unspec
 ;;^UTILITY(U,$J,358.3,54617,1,4,0)
 ;;=4^E20.9
 ;;^UTILITY(U,$J,358.3,54617,2)
 ;;=^5002714
 ;;^UTILITY(U,$J,358.3,54618,0)
 ;;=E23.0^^256^2767^31
 ;;^UTILITY(U,$J,358.3,54618,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54618,1,3,0)
 ;;=3^Hypopituitarism
 ;;^UTILITY(U,$J,358.3,54618,1,4,0)
 ;;=4^E23.0
 ;;^UTILITY(U,$J,358.3,54618,2)
 ;;=^60685
 ;;^UTILITY(U,$J,358.3,54619,0)
 ;;=E27.1^^256^2767^51
 ;;^UTILITY(U,$J,358.3,54619,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54619,1,3,0)
 ;;=3^Primary Adrenocortical Insufficiency
 ;;^UTILITY(U,$J,358.3,54619,1,4,0)
 ;;=4^E27.1
 ;;^UTILITY(U,$J,358.3,54619,2)
 ;;=^5002740
 ;;^UTILITY(U,$J,358.3,54620,0)
 ;;=E27.2^^256^2767^1
 ;;^UTILITY(U,$J,358.3,54620,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54620,1,3,0)
 ;;=3^Addisonian Crisis
 ;;^UTILITY(U,$J,358.3,54620,1,4,0)
 ;;=4^E27.2
 ;;^UTILITY(U,$J,358.3,54620,2)
 ;;=^263725
 ;;^UTILITY(U,$J,358.3,54621,0)
 ;;=E27.3^^256^2767^23
 ;;^UTILITY(U,$J,358.3,54621,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54621,1,3,0)
 ;;=3^Drug-induced Adrenocortical Insufficiency
 ;;^UTILITY(U,$J,358.3,54621,1,4,0)
 ;;=4^E27.3
 ;;^UTILITY(U,$J,358.3,54621,2)
 ;;=^5002741
 ;;^UTILITY(U,$J,358.3,54622,0)
 ;;=E29.1^^256^2767^52
 ;;^UTILITY(U,$J,358.3,54622,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54622,1,3,0)
 ;;=3^Testicular Hypofunction
 ;;^UTILITY(U,$J,358.3,54622,1,4,0)
 ;;=4^E29.1
 ;;^UTILITY(U,$J,358.3,54622,2)
 ;;=^5002754
 ;;^UTILITY(U,$J,358.3,54623,0)
 ;;=E55.9^^256^2767^59
 ;;^UTILITY(U,$J,358.3,54623,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54623,1,3,0)
 ;;=3^Vitamin D Deficiency,Unspec
 ;;^UTILITY(U,$J,358.3,54623,1,4,0)
 ;;=4^E55.9
 ;;^UTILITY(U,$J,358.3,54623,2)
 ;;=^5002799
 ;;^UTILITY(U,$J,358.3,54624,0)
 ;;=E66.01^^256^2767^38
 ;;^UTILITY(U,$J,358.3,54624,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54624,1,3,0)
 ;;=3^Morbid Obesity
 ;;^UTILITY(U,$J,358.3,54624,1,4,0)
 ;;=4^E66.01
 ;;^UTILITY(U,$J,358.3,54624,2)
 ;;=^5002826
 ;;^UTILITY(U,$J,358.3,54625,0)
 ;;=E66.8^^256^2767^42
 ;;^UTILITY(U,$J,358.3,54625,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54625,1,3,0)
 ;;=3^Obesity NEC
 ;;^UTILITY(U,$J,358.3,54625,1,4,0)
 ;;=4^E66.8
 ;;^UTILITY(U,$J,358.3,54625,2)
 ;;=^5002831
 ;;^UTILITY(U,$J,358.3,54626,0)
 ;;=E66.9^^256^2767^43
 ;;^UTILITY(U,$J,358.3,54626,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54626,1,3,0)
 ;;=3^Obesity,Unspec
 ;;^UTILITY(U,$J,358.3,54626,1,4,0)
 ;;=4^E66.9
 ;;^UTILITY(U,$J,358.3,54626,2)
 ;;=^5002832
 ;;^UTILITY(U,$J,358.3,54627,0)
 ;;=E74.39^^256^2767^35
 ;;^UTILITY(U,$J,358.3,54627,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54627,1,3,0)
 ;;=3^Intestinal Carbohydrate Absorption Disorder NEC
 ;;^UTILITY(U,$J,358.3,54627,1,4,0)
 ;;=4^E74.39
 ;;^UTILITY(U,$J,358.3,54627,2)
 ;;=^5002928
 ;;^UTILITY(U,$J,358.3,54628,0)
 ;;=E83.30^^256^2767^46
 ;;^UTILITY(U,$J,358.3,54628,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54628,1,3,0)
 ;;=3^Phosphorus Metabolism Disorder,Unspec
