ABSVTED2 ;VAMC ALTOONA/CTB - EDIT DAILY ACTIVITY RECORDS ;5/3/93  4:16 PM
V ;;4.0;VOLUNTARY TIMEKEEPING;;JULY 6, 1994
DAED ;DAILY ACT EDIT
 D ^ABSVSITE G:'% OUT
 S DIC("A")="Select VOLUNTEER: "
DA1 W ! S DIC=503331,DIC(0)="AEMQZ",DIC("S")="I $P(^(0),U,7)=ABSV(""SITE"")"
 F  D MDIV^ABSVSITE,^DIC G:+Y<0 OUT Q:$$ACTIVE^ABSVU2(+$P(Y,U,2),ABSV("INST"))
 S DA=+Y K DIC
 S DIE="^ABS(503331,",DR=4 D ^DIE K DIE
 S DIC("A")="Select Next VOLUNTEER: " G DA1
DADEL ;DEL DAILY ACT REC
 D ^ABSVSITE G:'% OUT
 S %DT="AE",%DT("A")="Select DATE WORKED: " D ^%DT K %DT,X G:Y<0 OUT
 S DATE=+Y
 S DIC("A")="Select VOLUNTEER: "
DADEL1 W ! S DIC=503331,DIC(0)="AEMQZ",DIC("S")="I $P(^(0),U,7)=ABSV(""SITE""),$P(^(0),U,3)=DATE"
 D MDIV^ABSVSITE,^DIC G:+Y<0 OUT S DA=+Y K DIC
 S ABSVXA="I am going to delete this entry.",ABSVXA(1)="Are you sure you want to do this",ABSVXB="",%=2 D ^ABSVYN G:%'=1 DADEL
 S ABSVXA="ARE YOU SURE",ABSVXB="",%=1 D ^ABSVYN G:%'=1 OUT
 S X="While I delete this entry...." D WAIT^ABSVYN,DEL^ABSVDDE
 S DIC("A")="Select Next Volunteer: " G DADEL1
OUT K %,%DT,%W,%Y,%Y1,ABSVX("CREATE"),C,COMB,D0,D1,DA,DA1,DATE,DI,DIC,DIE,DIK,DDH,DQ,DR,I,MONTH,NN,NAME,ORG,SER,VOL,TC,TC1,TC2,TC3,X,X1,Y
 QUIT
