RMPRNTE0 ;ISC/XTSUMBLD KERNEL - Package checksum checker ;2960209.165831
 ;;3.0;PROSTHETICS;;Feb 09, 1996
 ;;7.3;2960209.165831
 S XT4="I 1",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
CONT F XT1=1:1 S XT2=$T(ROU+XT1) Q:XT2=""  S X=$P(XT2," ",1),XT3=$P(XT2,";",3) X XT4 I $T W !,X X ^%ZOSF("TEST") S:'$T XT3=0 X:XT3 ^%ZOSF("RSUM") W ?10,$S('XT3:"Routine not in UCI",XT3'=Y:"Calculated "_$C(7)_Y_", off by "_(Y-XT3),1:"ok")
 ;
 K %1,%2,%3,X,Y,XT1,XT2,XT3,XT4 Q
ONE S XT4="I $D(^UTILITY($J,X))",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
 W !,"Check a subset of routines:" K ^UTILITY($J) X ^%ZOSF("RSEL")
 W ! G CONT
ROU ;;
RMPRI02C ;;17018673
RMPRI02D ;;11563027
RMPRI02E ;;8865635
RMPRI02F ;;7027166
RMPRI02G ;;6842109
RMPRI02H ;;7244905
RMPRI02I ;;5925694
RMPRI02J ;;7534905
RMPRI02K ;;6078959
RMPRI02L ;;7201032
RMPRI02M ;;7004564
RMPRI02N ;;6741062
RMPRI02O ;;7457773
RMPRI02P ;;7839986
RMPRI02Q ;;8526976
RMPRI02R ;;7708749
RMPRI02S ;;8803448
RMPRI02T ;;6563270
RMPRI02U ;;7870262
RMPRI02V ;;10580744
RMPRI02W ;;7403138
RMPRI02X ;;5302860
RMPRI02Y ;;5789094
RMPRI02Z ;;3515264
RMPRINI1 ;;4973915
RMPRINI2 ;;5232635
RMPRINI3 ;;16808150
RMPRINI4 ;;3357807
RMPRINI5 ;;3278376
RMPRINIS ;;2216491
RMPRINIT ;;10531058
RMPRKIL ;;2168834
RMPRL22 ;;4975183
RMPRL9 ;;15167046
RMPRLI ;;6459285
RMPRM ;;9889881
RMPROP ;;3115920
RMPROPN ;;12427496
RMPROPN1 ;;7720327
RMPRP2 ;;4917982
RMPRP21 ;;19620260
RMPRP22 ;;11385923
RMPRP23 ;;11575829
RMPRP24 ;;6186689
RMPRP55 ;;19076827
RMPRPAT ;;15563799
RMPRPAT0 ;;8504379
RMPRPAT1 ;;14399533
RMPRPAT2 ;;7570637
RMPRPAT3 ;;6735087
RMPRPAT5 ;;7777843
RMPRPAT6 ;;8200177
RMPRPOST ;;8415128
RMPRPRE ;;9046510
RMPRPRT ;;12871392
RMPRPRT1 ;;11245195
RMPRPSC ;;9702495
RMPRRET1 ;;19291270
RMPRRET2 ;;7642705
RMPRRET9 ;;11136432
RMPRS ;;13212379
RMPRSC ;;3366650
RMPRSCA ;;22684531
RMPRSCB ;;15730148
RMPRSE1 ;;15517066
RMPRSEA ;;17966677
RMPRSEC ;;5488013
RMPRSIT ;;4951282
RMPRSP ;;10258059
RMPRSP1 ;;9806970
RMPRSP2 ;;16273581
RMPRST2 ;;2509518
RMPRSTK ;;15195669
RMPRSTL ;;13233381
RMPRU ;;2634577
RMPRUTIL ;;9649163
RMPRUTL1 ;;4432980
RMPRUTL2 ;;2045338
RMPRUTL3 ;;3687098
RMPTI001 ;;8815267
RMPTI002 ;;9116374
RMPTI003 ;;10325495
RMPTI004 ;;2105536
RMPTI005 ;;1755613
RMPTINI1 ;;4835438
RMPTINI2 ;;5232643
RMPTINI3 ;;16808274
RMPTINI4 ;;3357815
RMPTINI5 ;;493030
RMPTINIS ;;2217017
RMPTINIT ;;10238404