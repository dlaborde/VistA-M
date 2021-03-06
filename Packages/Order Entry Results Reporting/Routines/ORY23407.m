ORY23407 ;SLC/RJS,CLA - OCX PACKAGE RULE TRANSPORT ROUTINE (Delete after Install of OR*3*234) ;MAY 13,2005 at 09:31
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**234**;Dec 17,1997
 ;;  ;;ORDER CHECK EXPERT version 1.01 released OCT 29,1998
 ;
S ;
 ;
 D DOT^ORY234ES
 ;
 ;
 K REMOTE,LOCAL,OPCODE,REF
 F LINE=1:1:500 S TEXT=$P($T(DATA+LINE),";",2,999) Q:TEXT  I $L(TEXT) D  Q:QUIT
 .S ^TMP("OCXRULE",$J,$O(^TMP("OCXRULE",$J,"A"),-1)+1)=TEXT
 ;
 ;
 ;
 Q
 ;
DATA ;
 ;
 ;;D^CMC
 ;;R^"860.4:",101,"E"
 ;;D^FREE TEXT
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.01,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.02,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",1,"E"
 ;;D^PATIENT.CONTR_MED_CODE
 ;;EOR^
 ;;KEY^860.4:^CONTRAST MEDIA CODE TRANSLATION
 ;;R^"860.4:",.01,"E"
 ;;D^CONTRAST MEDIA CODE TRANSLATION
 ;;R^"860.4:",101,"E"
 ;;D^FREE TEXT
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.01,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.02,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",1,"E"
 ;;D^PATIENT.CON_MEDIA_TRANS
 ;;EOR^
 ;;KEY^860.4:^FILLER
 ;;R^"860.4:",.01,"E"
 ;;D^FILLER
 ;;R^"860.4:",1,"E"
 ;;D^FILL
 ;;R^"860.4:",101,"E"
 ;;D^FREE TEXT
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",.01,"E"
 ;;D^CPRS ORDER PRESCAN
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",.02,"E"
 ;;D^ORDER ENTRY ORDER PRESCAN
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",1,"E"
 ;;D^PATIENT.OPS_FILLER
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",.01,"E"
 ;;D^GENERIC HL7 MESSAGE ARRAY
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",.02,"E"
 ;;D^HL7 COMMON ORDER SEGMENT
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",1,"E"
 ;;D^PATIENT.HL7_FILLER
 ;;EOR^
 ;;KEY^860.4:^ORDER MODE
 ;;R^"860.4:",.01,"E"
 ;;D^ORDER MODE
 ;;R^"860.4:",101,"E"
 ;;D^FREE TEXT
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",.01,"E"
 ;;D^CPRS ORDER PRESCAN
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",.02,"E"
 ;;D^ORDER ENTRY ORDER PRESCAN
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",1,"E"
 ;;D^PATIENT.OPS_ORD_MODE
 ;;EOR^
 ;;KEY^860.4:^ORDERABLE ITEM IEN
 ;;R^"860.4:",.01,"E"
 ;;D^ORDERABLE ITEM IEN
 ;;R^"860.4:",101,"E"
 ;;D^NUMERIC
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",.01,"E"
 ;;D^CPRS ORDER PRESCAN
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",.02,"E"
 ;;D^ORDER ENTRY ORDER PRESCAN
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",1,"E"
 ;;D^PATIENT.ORDER_ITEM_IEN
 ;;EOR^
 ;;KEY^860.4:^PATIENT IEN
 ;;R^"860.4:",.01,"E"
 ;;D^PATIENT IEN
 ;;R^"860.4:",101,"E"
 ;;D^NUMERIC
 ;;R^"860.4:","860.41:CPRS ORDER PROTOCOL^860.6",.01,"E"
 ;;D^CPRS ORDER PROTOCOL
 ;;R^"860.4:","860.41:CPRS ORDER PROTOCOL^860.6",.02,"E"
 ;;D^OERR ORDER EVENT FLAG PROTOCOL
 ;;R^"860.4:","860.41:CPRS ORDER PROTOCOL^860.6",1,"E"
 ;;D^PATIENT.OERR_ORDER_PATIENT
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.01,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.02,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",1,"E"
 ;;D^PATIENT.IEN
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",.01,"E"
 ;;D^GENERIC HL7 MESSAGE ARRAY
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",.02,"E"
 ;;D^HL7 PATIENT ID SEGMENT
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",1,"E"
 ;;D^PATIENT.HL7_PATIENT_ID
 ;;EOR^
 ;;EOF^OCXS(860.4)^1
 ;;SOF^860.3  ORDER CHECK ELEMENT
 ;;KEY^860.3:^CONTRAST MEDIA ALLERGY
 ;;R^"860.3:",.01,"E"
 ;;D^CONTRAST MEDIA ALLERGY
 ;;R^"860.3:",.02,"E"
 ;;D^CPRS ORDER PRESCAN
 ;;R^"860.3:","860.31:1",.01,"E"
 ;;D^1
 ;;R^"860.3:","860.31:1",1,"E"
 ;;D^ORDER MODE
 ;;R^"860.3:","860.31:1",2,"E"
 ;;D^EQ FREE TEXT
 ;;R^"860.3:","860.31:1",3,"E"
 ;;D^SELECT
 ;;R^"860.3:","860.31:2",.01,"E"
 ;;D^2
 ;;R^"860.3:","860.31:2",1,"E"
 ;;D^FILLER
 ;;R^"860.3:","860.31:2",2,"E"
 ;;D^EQ FREE TEXT
 ;;R^"860.3:","860.31:2",3,"E"
 ;;D^RA
 ;;R^"860.3:","860.31:3",.01,"E"
 ;;D^3
 ;;R^"860.3:","860.31:3",1,"E"
 ;;D^CONTRAST MEDIA CODE
 ;;R^"860.3:","860.31:3",2,"E"
 ;;D^CONTAINS ELEMENT IN SET
 ;;R^"860.3:","860.31:3",3,"E"
 ;;D^M,I,N,L,C,G,B
 ;;R^"860.3:","860.31:4",.01,"E"
 ;;D^4
 ;;R^"860.3:","860.31:4",1,"E"
 ;;D^CONTRAST MEDIA ALLERGY FLAG
 ;;R^"860.3:","860.31:4",2,"E"
 ;;D^LOGICAL TRUE
 ;;EOR^
 ;;EOF^OCXS(860.3)^1
 ;;SOF^860.2  ORDER CHECK RULE
 ;;KEY^860.2:^ALLERGY - CONTRAST MEDIA REACTION
 ;;R^"860.2:",.01,"E"
 ;;D^ALLERGY - CONTRAST MEDIA REACTION
 ;;R^"860.2:","860.21:1",.01,"E"
 ;;D^ALLERGY
 ;;R^"860.2:","860.21:1",1,"E"
 ;;D^CONTRAST MEDIA ALLERGY
 ;;R^"860.2:","860.22:1",.01,"E"
 ;;D^1
 ;;R^"860.2:","860.22:1",1,"E"
 ;;D^ALLERGY
 ;;R^"860.2:","860.22:1",2,"E"
 ;;D^ALLERGY-CONTRAST MEDIA INTERACTION
 ;;R^"860.2:","860.22:1",6,"E"
 ;;D^Patient allergic to contrast media. This procedure uses: |CONTRAST MEDIA CODE TRANSLATION|
 ;;EOR^
 ;;EOF^OCXS(860.2)^1
 ;1;
 ;
