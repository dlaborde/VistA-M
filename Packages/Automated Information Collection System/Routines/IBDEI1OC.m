IBDEI1OC ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,28012,1,3,0)
 ;;=3^Osteomyelitis,Unspec Sites
 ;;^UTILITY(U,$J,358.3,28012,1,4,0)
 ;;=4^M86.8X9
 ;;^UTILITY(U,$J,358.3,28012,2)
 ;;=^5014655
 ;;^UTILITY(U,$J,358.3,28013,0)
 ;;=M86.60^^132^1322^61
 ;;^UTILITY(U,$J,358.3,28013,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28013,1,3,0)
 ;;=3^Osteomyelitis,Chronic,Unspec Site
 ;;^UTILITY(U,$J,358.3,28013,1,4,0)
 ;;=4^M86.60
 ;;^UTILITY(U,$J,358.3,28013,2)
 ;;=^5014630
 ;;^UTILITY(U,$J,358.3,28014,0)
 ;;=M86.40^^132^1322^56
 ;;^UTILITY(U,$J,358.3,28014,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28014,1,3,0)
 ;;=3^Osteomyelitis w/ Draining Sinus,Chronic,Unspec Site
 ;;^UTILITY(U,$J,358.3,28014,1,4,0)
 ;;=4^M86.40
 ;;^UTILITY(U,$J,358.3,28014,2)
 ;;=^5014583
 ;;^UTILITY(U,$J,358.3,28015,0)
 ;;=R50.2^^132^1322^23
 ;;^UTILITY(U,$J,358.3,28015,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28015,1,3,0)
 ;;=3^Fever,Drug-Induced
 ;;^UTILITY(U,$J,358.3,28015,1,4,0)
 ;;=4^R50.2
 ;;^UTILITY(U,$J,358.3,28015,2)
 ;;=^5019507
 ;;^UTILITY(U,$J,358.3,28016,0)
 ;;=R50.9^^132^1322^27
 ;;^UTILITY(U,$J,358.3,28016,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28016,1,3,0)
 ;;=3^Fever,Unspec
 ;;^UTILITY(U,$J,358.3,28016,1,4,0)
 ;;=4^R50.9
 ;;^UTILITY(U,$J,358.3,28016,2)
 ;;=^5019512
 ;;^UTILITY(U,$J,358.3,28017,0)
 ;;=R76.11^^132^1322^1
 ;;^UTILITY(U,$J,358.3,28017,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28017,1,3,0)
 ;;=3^Abnormal Reaction to TB Test w/o Active TB
 ;;^UTILITY(U,$J,358.3,28017,1,4,0)
 ;;=4^R76.11
 ;;^UTILITY(U,$J,358.3,28017,2)
 ;;=^5019570
 ;;^UTILITY(U,$J,358.3,28018,0)
 ;;=Z21.^^132^1322^30
 ;;^UTILITY(U,$J,358.3,28018,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28018,1,3,0)
 ;;=3^HIV Asymptomatic,Infection Status
 ;;^UTILITY(U,$J,358.3,28018,1,4,0)
 ;;=4^Z21.
 ;;^UTILITY(U,$J,358.3,28018,2)
 ;;=^5062777
 ;;^UTILITY(U,$J,358.3,28019,0)
 ;;=B37.0^^132^1322^16
 ;;^UTILITY(U,$J,358.3,28019,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28019,1,3,0)
 ;;=3^Candidal Stomatitis (Oral Thrush)
 ;;^UTILITY(U,$J,358.3,28019,1,4,0)
 ;;=4^B37.0
 ;;^UTILITY(U,$J,358.3,28019,2)
 ;;=^5000612
 ;;^UTILITY(U,$J,358.3,28020,0)
 ;;=B97.10^^132^1322^22
 ;;^UTILITY(U,$J,358.3,28020,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28020,1,3,0)
 ;;=3^Enterovirus,Unspec,as Cause of Disease
 ;;^UTILITY(U,$J,358.3,28020,1,4,0)
 ;;=4^B97.10
 ;;^UTILITY(U,$J,358.3,28020,2)
 ;;=^5000861
 ;;^UTILITY(U,$J,358.3,28021,0)
 ;;=R50.82^^132^1322^24
 ;;^UTILITY(U,$J,358.3,28021,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28021,1,3,0)
 ;;=3^Fever,Postprocedural
 ;;^UTILITY(U,$J,358.3,28021,1,4,0)
 ;;=4^R50.82
 ;;^UTILITY(U,$J,358.3,28021,2)
 ;;=^5019509
 ;;^UTILITY(U,$J,358.3,28022,0)
 ;;=R50.83^^132^1322^26
 ;;^UTILITY(U,$J,358.3,28022,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28022,1,3,0)
 ;;=3^Fever,Postvaccination
 ;;^UTILITY(U,$J,358.3,28022,1,4,0)
 ;;=4^R50.83
 ;;^UTILITY(U,$J,358.3,28022,2)
 ;;=^5019510
 ;;^UTILITY(U,$J,358.3,28023,0)
 ;;=R50.84^^132^1322^25
 ;;^UTILITY(U,$J,358.3,28023,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28023,1,3,0)
 ;;=3^Fever,Posttransfusion
 ;;^UTILITY(U,$J,358.3,28023,1,4,0)
 ;;=4^R50.84
 ;;^UTILITY(U,$J,358.3,28023,2)
 ;;=^5019511
 ;;^UTILITY(U,$J,358.3,28024,0)
 ;;=B02.23^^132^1322^70
 ;;^UTILITY(U,$J,358.3,28024,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28024,1,3,0)
 ;;=3^Postherpetic Polyneuropathy
 ;;^UTILITY(U,$J,358.3,28024,1,4,0)
 ;;=4^B02.23
 ;;^UTILITY(U,$J,358.3,28024,2)
 ;;=^266550
 ;;^UTILITY(U,$J,358.3,28025,0)
 ;;=B02.22^^132^1322^71
 ;;^UTILITY(U,$J,358.3,28025,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28025,1,3,0)
 ;;=3^Postherpetic Trigeminal Neuralgia
