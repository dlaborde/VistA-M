TIUIL9 ; List Template Exporter ; 20-JUN-1997
 ;;1.0;TEXT INTEGRATION UTILITIES;;Jun 20, 1997
 D BMES^XPDUTL("'TIUFH EDIT DDEFS MGR' List Template...")
 S DA=$O(^SD(409.61,"B","TIUFH EDIT DDEFS MGR",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="TIUFH EDIT DDEFS MGR" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="TIUFH EDIT DDEFS MGR^1^^188^5^18^1^1^Entry^TIUFH ACTION MENU MGR^Edit Document Definitions^1^^1"
 .S ^SD(409.61,VALM,1)="^TIUF HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""TIUF1"",$J)"
 .S ^SD(409.61,VALM,"COL",0)="^409.621^14^11"
 .S ^SD(409.61,VALM,"COL",4,0)="NUMBER^1^6^^^0"
 .S ^SD(409.61,VALM,"COL",5,0)="NAME1^8^40^Name^^1"
 .S ^SD(409.61,VALM,"COL",6,0)="NAME2^48^27"
 .S ^SD(409.61,VALM,"COL",7,0)="TYPE^77^4^Type"
 .S ^SD(409.61,VALM,"COL",8,0)="IFN^82^7^    IFN"
 .S ^SD(409.61,VALM,"COL",9,0)="NATIONAL^91^4^Natl"
 .S ^SD(409.61,VALM,"COL",10,0)="STATUS^97^6^Status"
 .S ^SD(409.61,VALM,"COL",11,0)="OWNER^105^7^Owner"
 .S ^SD(409.61,VALM,"COL",12,0)="INUSE^114^6^In Use"
 .S ^SD(409.61,VALM,"COL",13,0)="BOIL^122^4^Boil"
 .S ^SD(409.61,VALM,"COL",14,0)="PRINTNM^128^60^Print Name"
 .S ^SD(409.61,VALM,"COL","AIDENT",0,4)=""
 .S ^SD(409.61,VALM,"COL","AIDENT",1,5)=""
 .S ^SD(409.61,VALM,"FNL")="D EXIT^TIUFH"
 .S ^SD(409.61,VALM,"HDR")="D HDR^TIUFH"
 .S ^SD(409.61,VALM,"HLP")="D HELP^TIUFHLP"
 .S ^SD(409.61,VALM,"INIT")="D INIT^TIUFH"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .D MES^XPDUTL("  Filed.")
 ;
 D BMES^XPDUTL("'TIUFJ OBJECTS CLIN' List Template...")
 S DA=$O(^SD(409.61,"B","TIUFJ OBJECTS CLIN",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="TIUFJ OBJECTS CLIN" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="TIUFJ OBJECTS CLIN^1^^157^5^18^1^1^Entry^TIUFJ ACTION MENU CLIN^Objects^1^^1"
 .S ^SD(409.61,VALM,1)="^TIUF HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""TIUF1"",$J)"
 .S ^SD(409.61,VALM,"COL",0)="^409.621^7^7"
 .S ^SD(409.61,VALM,"COL",1,0)="NUMBER^1^6"
 .S ^SD(409.61,VALM,"COL",2,0)="NAME1^8^40^Name^^1"
 .S ^SD(409.61,VALM,"COL",3,0)="NAME2^48^27"
 .S ^SD(409.61,VALM,"COL",4,0)="STATUS^75^6^Status"
 .S ^SD(409.61,VALM,"COL",5,0)="NATIONAL^82^4^Natl"
 .S ^SD(409.61,VALM,"COL",6,0)="OWNER^88^7^Owner"
 .S ^SD(409.61,VALM,"COL",7,0)="PRINTNM^97^60^Print Name"
 .S ^SD(409.61,VALM,"COL","AIDENT",1,2)=""
 .S ^SD(409.61,VALM,"FNL")="D EXIT^TIUFJ"
 .S ^SD(409.61,VALM,"HDR")="D HDR^TIUFJ"
 .S ^SD(409.61,VALM,"HLP")="D HELP^TIUFHLP"
 .S ^SD(409.61,VALM,"INIT")="D INIT^TIUFJ"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .D MES^XPDUTL("  Filed.")
 ;
 D BMES^XPDUTL("'TIUFJ OBJECTS MGR' List Template...")
 S DA=$O(^SD(409.61,"B","TIUFJ OBJECTS MGR",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="TIUFJ OBJECTS MGR" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="TIUFJ OBJECTS MGR^1^^166^5^18^1^1^Entry^TIUFJ ACTION MENU MGR^Objects^1^^1"
 .S ^SD(409.61,VALM,1)="^TIUF HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""TIUF1"",$J)"
 .S ^SD(409.61,VALM,"COL",0)="^409.621^8^8"
 .S ^SD(409.61,VALM,"COL",1,0)="NUMBER^1^6"
 .S ^SD(409.61,VALM,"COL",2,0)="NAME1^8^40^^^1"
 .S ^SD(409.61,VALM,"COL",3,0)="NAME2^48^27"
 .S ^SD(409.61,VALM,"COL",4,0)="STATUS^75^6^Status"
 .S ^SD(409.61,VALM,"COL",5,0)="IFN^82^7^    IFN"
 .S ^SD(409.61,VALM,"COL",6,0)="NATIONAL^91^4^Natl"
 .S ^SD(409.61,VALM,"COL",7,0)="OWNER^97^7^Owner"
 .S ^SD(409.61,VALM,"COL",8,0)="PRINTNM^106^60^Print Name"
 .S ^SD(409.61,VALM,"COL","AIDENT",1,2)=""
 .S ^SD(409.61,VALM,"FNL")="D EXIT^TIUFJ"
 .S ^SD(409.61,VALM,"HDR")="D HDR^TIUFJ"
 .S ^SD(409.61,VALM,"HLP")="D HELP^TIUFHLP"
 .S ^SD(409.61,VALM,"INIT")="D INIT^TIUFJ"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .D MES^XPDUTL("  Filed.")
 ;
 D BMES^XPDUTL("'TIUFT ITEMS ADD/EDIT/VIEW MGR' List Template...")
 S DA=$O(^SD(409.61,"B","TIUFT ITEMS ADD/EDIT/VIEW MGR",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="TIUFT ITEMS ADD/EDIT/VIEW MGR" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="TIUFT ITEMS ADD/EDIT/VIEW MGR^1^^123^5^18^1^1^Item^TIUFT ACTION MENU ADD/EDIT/VIEW ITEMS^Items^1^^1"
 .S ^SD(409.61,VALM,1)="^TIUF HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""TIUF2"",$J)"
 .S ^SD(409.61,VALM,"COL",0)="^409.621^7^7"
 .S ^SD(409.61,VALM,"COL",1,0)="NUMBER^1^6"
 .S ^SD(409.61,VALM,"COL",2,0)="NAME1^8^23^Item^^1"
 .S ^SD(409.61,VALM,"COL",3,0)="NAME2^31^37"
 .S ^SD(409.61,VALM,"COL",4,0)="MNEM^91^4^Mnem"
 .S ^SD(409.61,VALM,"COL",5,0)="IFN^82^7^    IFN"
 .S ^SD(409.61,VALM,"COL",6,0)="SEQUENCE^75^6^Seq   "
 .S ^SD(409.61,VALM,"COL",7,0)="MENUTEXT^97^26^Menu Text"
 .S ^SD(409.61,VALM,"COL","AIDENT",1,2)=""
 .S ^SD(409.61,VALM,"FNL")="D EXIT^TIUFT"
 .S ^SD(409.61,VALM,"HDR")="D HDR^TIUFT"
 .S ^SD(409.61,VALM,"HLP")="D HELP^TIUFHLP"
 .S ^SD(409.61,VALM,"INIT")="D INIT^TIUFT"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .D MES^XPDUTL("  Filed.")
 ;
 G ^TIUIL10
