OCXDI01R ;SLC/RJS,CLA - OCX PACKAGE DIAGNOSTIC ROUTINES ;SEP 7,1999 at 10:30
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**32**;Dec 17,1997
 ;;  ;;ORDER CHECK EXPERT version 1.01 released OCT 29,1998
 ;
S ;
 ;
 D DOT^OCXDIAG
 ;
 ;
 K REMOTE,LOCAL,OPCODE,REF
 F LINE=1:1:500 S TEXT=$P($T(DATA+LINE),";",2,999) Q:TEXT  I $L(TEXT) D  Q:QUIT
 .S ^TMP("OCXDIAG",$J,$O(^TMP("OCXDIAG",$J,"A"),-1)+1)=TEXT
 ;
 G ^OCXDI01S
 ;
 Q
 ;
DATA ;
 ;
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^LAB COLL D/T
 ;;R^"863.4:",.01,"E"
 ;;D^LAB COLL D/T
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^DATE/TIME
 ;;EOR^
 ;;KEY^863.4:^LAB RESULT
 ;;R^"863.4:",.01,"E"
 ;;D^LAB RESULT
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^LAB SPECIMEN
 ;;R^"863.4:",.01,"E"
 ;;D^LAB SPECIMEN
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^LAB TEST NAME
 ;;R^"863.4:",.01,"E"
 ;;D^LAB TEST NAME
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^RADIOLOGY PROCEDURE
 ;;R^"863.4:",.01,"E"
 ;;D^RADIOLOGY PROCEDURE
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^ORDER STATUS
 ;;R^"863.4:",.01,"E"
 ;;D^ORDER STATUS
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^REQUEST STATUS
 ;;R^"863.4:",.01,"E"
 ;;D^REQUEST STATUS
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^HL7 LOCAL OI TEXT
 ;;R^"863.4:",.01,"E"
 ;;D^HL7 LOCAL OI TEXT
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^MOVEMENT TYPE
 ;;R^"863.4:",.01,"E"
 ;;D^MOVEMENT TYPE
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^MOVEMENT DATE
 ;;R^"863.4:",.01,"E"
 ;;D^MOVEMENT DATE
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^DATE/TIME
 ;;EOR^
 ;;KEY^863.4:^ORDER FLAGGED
 ;;R^"863.4:",.01,"E"
 ;;D^ORDER FLAGGED
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^BOOLEAN
 ;;EOR^
 ;;KEY^863.4:^ORDER REQ CHART SIG
 ;;R^"863.4:",.01,"E"
 ;;D^ORDER REQ CHART SIG
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^BOOLEAN
 ;;EOR^
 ;;KEY^863.4:^SERVICE ORD. REQ. SIG.
 ;;R^"863.4:",.01,"E"
 ;;D^SERVICE ORD. REQ. SIG.
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^BOOLEAN
 ;;EOR^
 ;;KEY^863.4:^ORDER REQ. CO-SIG.
 ;;R^"863.4:",.01,"E"
 ;;D^ORDER REQ. CO-SIG.
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^BOOLEAN
 ;;EOR^
 ;;KEY^863.4:^ORDER REQ. ELEC. SIG.
 ;;R^"863.4:",.01,"E"
 ;;D^ORDER REQ. ELEC. SIG.
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^BOOLEAN
 ;;EOR^
 ;;KEY^863.4:^ORDER RESULT READY FLAG
 ;;R^"863.4:",.01,"E"
 ;;D^ORDER RESULT READY FLAG
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^BOOLEAN
 ;;EOR^
 ;;KEY^863.4:^OBSERVATION VALUE
 ;;R^"863.4:",.01,"E"
 ;;D^OBSERVATION VALUE
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^ORDER NUMBER
 ;;R^"863.4:",.01,"E"
 ;;D^ORDER NUMBER
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^NUMERIC
 ;;EOR^
 ;;KEY^863.4:^ORDERABLE ITEM
 ;;R^"863.4:",.01,"E"
 ;;D^ORDERABLE ITEM
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^IEN
 ;;R^"863.4:",.01,"E"
 ;;D^IEN
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^NUMERIC
 ;;EOR^
 ;;KEY^863.4:^ORDERABLE ITEM IEN
 ;;R^"863.4:",.01,"E"
 ;;D^ORDERABLE ITEM IEN
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^NUMERIC
 ;;EOR^
 ;;KEY^863.4:^FILLER
 ;;R^"863.4:",.01,"E"
 ;;D^FILLER
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^ORDER MODE
 ;;R^"863.4:",.01,"E"
 ;;D^ORDER MODE
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^NATIONAL ID
 ;;R^"863.4:",.01,"E"
 ;;D^NATIONAL ID
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^NATIONAL ID TEXT
 ;;R^"863.4:",.01,"E"
 ;;D^NATIONAL ID TEXT
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^CODING SYSTEM
 ;;R^"863.4:",.01,"E"
 ;;D^CODING SYSTEM
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^LOCAL ID
 ;;R^"863.4:",.01,"E"
 ;;D^LOCAL ID
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^LOCAL TEXT
 ;;R^"863.4:",.01,"E"
 ;;D^LOCAL TEXT
 ;;R^"863.4:","863.41:1",.01,"E"
 ;;D^DATA TYPE
 ;;R^"863.4:","863.41:1",1,"E"
 ;;D^FREE TEXT
 ;;EOR^
 ;;KEY^863.4:^LOCAL CODING SYSTEM
 ;1;
 ;
