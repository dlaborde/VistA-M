IBDEI0GM ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,7408,0)
 ;;=99070^^51^494^2^^^^1
 ;;^UTILITY(U,$J,358.3,7408,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7408,1,2,0)
 ;;=2^99070
 ;;^UTILITY(U,$J,358.3,7408,1,3,0)
 ;;=3^AV FISTULA KIT
 ;;^UTILITY(U,$J,358.3,7409,0)
 ;;=A9900^^51^494^11^^^^1
 ;;^UTILITY(U,$J,358.3,7409,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7409,1,2,0)
 ;;=2^A9900
 ;;^UTILITY(U,$J,358.3,7409,1,3,0)
 ;;=3^SUPPLY/ACCESSORY/SERVICE
 ;;^UTILITY(U,$J,358.3,7410,0)
 ;;=A4690^^51^494^6^^^^1
 ;;^UTILITY(U,$J,358.3,7410,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7410,1,2,0)
 ;;=2^A4690
 ;;^UTILITY(U,$J,358.3,7410,1,3,0)
 ;;=3^DIALYZER, EACH
 ;;^UTILITY(U,$J,358.3,7411,0)
 ;;=A4750^^51^494^1^^^^1
 ;;^UTILITY(U,$J,358.3,7411,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7411,1,2,0)
 ;;=2^A4750
 ;;^UTILITY(U,$J,358.3,7411,1,3,0)
 ;;=3^ART OR VENOUS BLOOD TUBING
 ;;^UTILITY(U,$J,358.3,7412,0)
 ;;=E1590^^51^494^9^^^^1
 ;;^UTILITY(U,$J,358.3,7412,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7412,1,2,0)
 ;;=2^E1590
 ;;^UTILITY(U,$J,358.3,7412,1,3,0)
 ;;=3^HEMODIALYSIS MACHINE
 ;;^UTILITY(U,$J,358.3,7413,0)
 ;;=90371^^51^495^5^^^^1
 ;;^UTILITY(U,$J,358.3,7413,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7413,1,2,0)
 ;;=2^90371
 ;;^UTILITY(U,$J,358.3,7413,1,3,0)
 ;;=3^HEP B IG IM
 ;;^UTILITY(U,$J,358.3,7414,0)
 ;;=90740^^51^495^6^^^^1
 ;;^UTILITY(U,$J,358.3,7414,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7414,1,2,0)
 ;;=2^90740
 ;;^UTILITY(U,$J,358.3,7414,1,3,0)
 ;;=3^HEPB VACC ILL PAT 3 DOSE IM
 ;;^UTILITY(U,$J,358.3,7415,0)
 ;;=90632^^51^495^4^^^^1
 ;;^UTILITY(U,$J,358.3,7415,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7415,1,2,0)
 ;;=2^90632
 ;;^UTILITY(U,$J,358.3,7415,1,3,0)
 ;;=3^HEP A VACCINE ADULT IM
 ;;^UTILITY(U,$J,358.3,7416,0)
 ;;=90703^^51^495^9^^^^1
 ;;^UTILITY(U,$J,358.3,7416,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7416,1,2,0)
 ;;=2^90703
 ;;^UTILITY(U,$J,358.3,7416,1,3,0)
 ;;=3^TETANUS VACCINE IM
 ;;^UTILITY(U,$J,358.3,7417,0)
 ;;=90732^^51^495^7^^^^1
 ;;^UTILITY(U,$J,358.3,7417,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7417,1,2,0)
 ;;=2^90732
 ;;^UTILITY(U,$J,358.3,7417,1,3,0)
 ;;=3^PNEUMOCOCCAL VACCINE
 ;;^UTILITY(U,$J,358.3,7418,0)
 ;;=86580^^51^495^8^^^^1
 ;;^UTILITY(U,$J,358.3,7418,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7418,1,2,0)
 ;;=2^86580
 ;;^UTILITY(U,$J,358.3,7418,1,3,0)
 ;;=3^TB INTRADERMAL TEST
 ;;^UTILITY(U,$J,358.3,7419,0)
 ;;=90658^^51^495^3^^^^1
 ;;^UTILITY(U,$J,358.3,7419,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7419,1,2,0)
 ;;=2^90658
 ;;^UTILITY(U,$J,358.3,7419,1,3,0)
 ;;=3^FLU VACCINE
 ;;^UTILITY(U,$J,358.3,7420,0)
 ;;=90715^^51^495^10^^^^1
 ;;^UTILITY(U,$J,358.3,7420,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7420,1,2,0)
 ;;=2^90715
 ;;^UTILITY(U,$J,358.3,7420,1,3,0)
 ;;=3^Tdap Vaccine
 ;;^UTILITY(U,$J,358.3,7421,0)
 ;;=90471^^51^495^1^^^^1
 ;;^UTILITY(U,$J,358.3,7421,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7421,1,2,0)
 ;;=2^90471
 ;;^UTILITY(U,$J,358.3,7421,1,3,0)
 ;;=3^IMMUNIZATION ADMIN,1 VACCINE
 ;;^UTILITY(U,$J,358.3,7422,0)
 ;;=90472^^51^495^2^^^^1
 ;;^UTILITY(U,$J,358.3,7422,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7422,1,2,0)
 ;;=2^90472
 ;;^UTILITY(U,$J,358.3,7422,1,3,0)
 ;;=3^IMMUNIZATION ADMIN,EA ADDL VACCINE
 ;;^UTILITY(U,$J,358.3,7423,0)
 ;;=90999^^51^496^1^^^^1
 ;;^UTILITY(U,$J,358.3,7423,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7423,1,2,0)
 ;;=2^90999
 ;;^UTILITY(U,$J,358.3,7423,1,3,0)
 ;;=3^Daily Dialysis Treatment
 ;;^UTILITY(U,$J,358.3,7424,0)
 ;;=90935^^51^497^1^^^^1
 ;;^UTILITY(U,$J,358.3,7424,1,0)
 ;;=^358.31IA^3^2
