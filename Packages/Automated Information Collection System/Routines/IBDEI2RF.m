IBDEI2RF ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,46333,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,46333,1,3,0)
 ;;=3^Chr Respiratory Failure w/ Hypercapnia
 ;;^UTILITY(U,$J,358.3,46333,1,4,0)
 ;;=4^J96.12
 ;;^UTILITY(U,$J,358.3,46333,2)
 ;;=^5008352
 ;;^UTILITY(U,$J,358.3,46334,0)
 ;;=J96.20^^206^2292^7
 ;;^UTILITY(U,$J,358.3,46334,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,46334,1,3,0)
 ;;=3^Acute and Chr Respiratory Failure
 ;;^UTILITY(U,$J,358.3,46334,1,4,0)
 ;;=4^J96.20
 ;;^UTILITY(U,$J,358.3,46334,2)
 ;;=^5008353
 ;;^UTILITY(U,$J,358.3,46335,0)
 ;;=J96.21^^206^2292^8
 ;;^UTILITY(U,$J,358.3,46335,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,46335,1,3,0)
 ;;=3^Acute and Chr Respiratory Failure w/ Hypoxia
 ;;^UTILITY(U,$J,358.3,46335,1,4,0)
 ;;=4^J96.21
 ;;^UTILITY(U,$J,358.3,46335,2)
 ;;=^5008354
 ;;^UTILITY(U,$J,358.3,46336,0)
 ;;=J96.22^^206^2292^9
 ;;^UTILITY(U,$J,358.3,46336,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,46336,1,3,0)
 ;;=3^Acute and Chr Respiratory Failure w/ Hypercapnia
 ;;^UTILITY(U,$J,358.3,46336,1,4,0)
 ;;=4^J96.22
 ;;^UTILITY(U,$J,358.3,46336,2)
 ;;=^5008355
 ;;^UTILITY(U,$J,358.3,46337,0)
 ;;=D86.0^^206^2292^100
 ;;^UTILITY(U,$J,358.3,46337,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,46337,1,3,0)
 ;;=3^Sarcoidosis of the Lung
 ;;^UTILITY(U,$J,358.3,46337,1,4,0)
 ;;=4^D86.0
 ;;^UTILITY(U,$J,358.3,46337,2)
 ;;=^5002442
 ;;^UTILITY(U,$J,358.3,46338,0)
 ;;=E66.9^^206^2293^6
 ;;^UTILITY(U,$J,358.3,46338,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,46338,1,3,0)
 ;;=3^Obesity,Unspec
 ;;^UTILITY(U,$J,358.3,46338,1,4,0)
 ;;=4^E66.9
 ;;^UTILITY(U,$J,358.3,46338,2)
 ;;=^5002832
 ;;^UTILITY(U,$J,358.3,46339,0)
 ;;=E66.01^^206^2293^4
 ;;^UTILITY(U,$J,358.3,46339,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,46339,1,3,0)
 ;;=3^Morbid Obesity d/t Excess Calories
 ;;^UTILITY(U,$J,358.3,46339,1,4,0)
 ;;=4^E66.01
 ;;^UTILITY(U,$J,358.3,46339,2)
 ;;=^5002826
 ;;^UTILITY(U,$J,358.3,46340,0)
 ;;=G25.9^^206^2293^1
 ;;^UTILITY(U,$J,358.3,46340,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,46340,1,3,0)
 ;;=3^Extrapyramidal & Movement Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,46340,1,4,0)
 ;;=4^G25.9
 ;;^UTILITY(U,$J,358.3,46340,2)
 ;;=^5003803
 ;;^UTILITY(U,$J,358.3,46341,0)
 ;;=G25.81^^206^2293^9
 ;;^UTILITY(U,$J,358.3,46341,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,46341,1,3,0)
 ;;=3^Restless Legs Syndrome
 ;;^UTILITY(U,$J,358.3,46341,1,4,0)
 ;;=4^G25.81
 ;;^UTILITY(U,$J,358.3,46341,2)
 ;;=^5003801
 ;;^UTILITY(U,$J,358.3,46342,0)
 ;;=G47.30^^206^2293^10
 ;;^UTILITY(U,$J,358.3,46342,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,46342,1,3,0)
 ;;=3^Sleep Apnea,Unspec
 ;;^UTILITY(U,$J,358.3,46342,1,4,0)
 ;;=4^G47.30
 ;;^UTILITY(U,$J,358.3,46342,2)
 ;;=^5003977
 ;;^UTILITY(U,$J,358.3,46343,0)
 ;;=G47.00^^206^2293^3
 ;;^UTILITY(U,$J,358.3,46343,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,46343,1,3,0)
 ;;=3^Insomnia,Unspec
 ;;^UTILITY(U,$J,358.3,46343,1,4,0)
 ;;=4^G47.00
 ;;^UTILITY(U,$J,358.3,46343,2)
 ;;=^332924
 ;;^UTILITY(U,$J,358.3,46344,0)
 ;;=G47.10^^206^2293^2
 ;;^UTILITY(U,$J,358.3,46344,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,46344,1,3,0)
 ;;=3^Hypersomnia,Unspec
 ;;^UTILITY(U,$J,358.3,46344,1,4,0)
 ;;=4^G47.10
 ;;^UTILITY(U,$J,358.3,46344,2)
 ;;=^332926
 ;;^UTILITY(U,$J,358.3,46345,0)
 ;;=G47.52^^206^2293^8
 ;;^UTILITY(U,$J,358.3,46345,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,46345,1,3,0)
 ;;=3^REM Sleep Behavior Disorder
 ;;^UTILITY(U,$J,358.3,46345,1,4,0)
 ;;=4^G47.52
 ;;^UTILITY(U,$J,358.3,46345,2)
 ;;=^332778
 ;;^UTILITY(U,$J,358.3,46346,0)
 ;;=R06.83^^206^2293^11
 ;;^UTILITY(U,$J,358.3,46346,1,0)
 ;;=^358.31IA^4^2
