IBDEI13H ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,18279,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18279,1,3,0)
 ;;=3^Atopic Dermatitis,Unspec
 ;;^UTILITY(U,$J,358.3,18279,1,4,0)
 ;;=4^L20.9
 ;;^UTILITY(U,$J,358.3,18279,2)
 ;;=^5009113
 ;;^UTILITY(U,$J,358.3,18280,0)
 ;;=L21.8^^94^905^262
 ;;^UTILITY(U,$J,358.3,18280,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18280,1,3,0)
 ;;=3^Seborrheic Dermatitis NEC
 ;;^UTILITY(U,$J,358.3,18280,1,4,0)
 ;;=4^L21.8
 ;;^UTILITY(U,$J,358.3,18280,2)
 ;;=^303310
 ;;^UTILITY(U,$J,358.3,18281,0)
 ;;=L21.9^^94^905^263
 ;;^UTILITY(U,$J,358.3,18281,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18281,1,3,0)
 ;;=3^Seborrheic Dermatitis,Unspec
 ;;^UTILITY(U,$J,358.3,18281,1,4,0)
 ;;=4^L21.9
 ;;^UTILITY(U,$J,358.3,18281,2)
 ;;=^188703
 ;;^UTILITY(U,$J,358.3,18282,0)
 ;;=L23.7^^94^905^30
 ;;^UTILITY(U,$J,358.3,18282,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18282,1,3,0)
 ;;=3^Allergic Contact Dermatitis d/t Plants
 ;;^UTILITY(U,$J,358.3,18282,1,4,0)
 ;;=4^L23.7
 ;;^UTILITY(U,$J,358.3,18282,2)
 ;;=^5009122
 ;;^UTILITY(U,$J,358.3,18283,0)
 ;;=L23.9^^94^905^31
 ;;^UTILITY(U,$J,358.3,18283,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18283,1,3,0)
 ;;=3^Allergic Contact Dermatitis,Unspec
 ;;^UTILITY(U,$J,358.3,18283,1,4,0)
 ;;=4^L23.9
 ;;^UTILITY(U,$J,358.3,18283,2)
 ;;=^5009125
 ;;^UTILITY(U,$J,358.3,18284,0)
 ;;=L24.9^^94^905^163
 ;;^UTILITY(U,$J,358.3,18284,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18284,1,3,0)
 ;;=3^Irritant Contact Dermatitis,Unspec
 ;;^UTILITY(U,$J,358.3,18284,1,4,0)
 ;;=4^L24.9
 ;;^UTILITY(U,$J,358.3,18284,2)
 ;;=^5009136
 ;;^UTILITY(U,$J,358.3,18285,0)
 ;;=L25.9^^94^905^115
 ;;^UTILITY(U,$J,358.3,18285,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18285,1,3,0)
 ;;=3^Contact Dermatitis,Unspec
 ;;^UTILITY(U,$J,358.3,18285,1,4,0)
 ;;=4^L25.9
 ;;^UTILITY(U,$J,358.3,18285,2)
 ;;=^5133647
 ;;^UTILITY(U,$J,358.3,18286,0)
 ;;=L26.^^94^905^148
 ;;^UTILITY(U,$J,358.3,18286,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18286,1,3,0)
 ;;=3^Exfoliative Dermatitis
 ;;^UTILITY(U,$J,358.3,18286,1,4,0)
 ;;=4^L26.
 ;;^UTILITY(U,$J,358.3,18286,2)
 ;;=^263886
 ;;^UTILITY(U,$J,358.3,18287,0)
 ;;=L27.0^^94^905^265
 ;;^UTILITY(U,$J,358.3,18287,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18287,1,3,0)
 ;;=3^Skin Eruption d/t Drugs/Meds,Generalized
 ;;^UTILITY(U,$J,358.3,18287,1,4,0)
 ;;=4^L27.0
 ;;^UTILITY(U,$J,358.3,18287,2)
 ;;=^5009144
 ;;^UTILITY(U,$J,358.3,18288,0)
 ;;=L27.1^^94^905^266
 ;;^UTILITY(U,$J,358.3,18288,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18288,1,3,0)
 ;;=3^Skin Eruption d/t Drugs/Meds,Localized
 ;;^UTILITY(U,$J,358.3,18288,1,4,0)
 ;;=4^L27.1
 ;;^UTILITY(U,$J,358.3,18288,2)
 ;;=^5009145
 ;;^UTILITY(U,$J,358.3,18289,0)
 ;;=L29.0^^94^905^250
 ;;^UTILITY(U,$J,358.3,18289,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18289,1,3,0)
 ;;=3^Pruritus Ani
 ;;^UTILITY(U,$J,358.3,18289,1,4,0)
 ;;=4^L29.0
 ;;^UTILITY(U,$J,358.3,18289,2)
 ;;=^100061
 ;;^UTILITY(U,$J,358.3,18290,0)
 ;;=L29.9^^94^905^251
 ;;^UTILITY(U,$J,358.3,18290,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18290,1,3,0)
 ;;=3^Pruritus,Unspec
 ;;^UTILITY(U,$J,358.3,18290,1,4,0)
 ;;=4^L29.9
 ;;^UTILITY(U,$J,358.3,18290,2)
 ;;=^5009153
 ;;^UTILITY(U,$J,358.3,18291,0)
 ;;=L30.0^^94^905^232
 ;;^UTILITY(U,$J,358.3,18291,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18291,1,3,0)
 ;;=3^Nummular Dermatitis
 ;;^UTILITY(U,$J,358.3,18291,1,4,0)
 ;;=4^L30.0
 ;;^UTILITY(U,$J,358.3,18291,2)
 ;;=^186823
 ;;^UTILITY(U,$J,358.3,18292,0)
 ;;=L30.1^^94^905^140
 ;;^UTILITY(U,$J,358.3,18292,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18292,1,3,0)
 ;;=3^Dyshidrosis
