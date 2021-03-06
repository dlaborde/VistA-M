SDEC26 ;ALB/SAT - VISTA SCHEDULING RPCS ;JAN 15, 2016
 ;;5.3;Scheduling;**627**;Aug 13, 1993;Build 249
 ;
 Q
 ;
EDITAPPT(SDECY,SDECAPTID,SDECNOTE,SDECLEN) ;Edit appointment (only 'note text' and appointment length can be edited)
 ;EDITAPPT(SDECY,SDECAPTID,SDECNOTE,SDECLEN)  external parameter tag is in SDEC
 ; SDECAPTID - Appointment ID - Pointer to SDEC APPOINTMENT
 ; SDECNOTE  - Note
 ; SDECLEN   - If there is a change in the length of appointment, this is the new value (in minutes) for length
 ;
 N SDECAP,SDECCL,SDECNEND,SDECNOD,SDECOLEN,SDECPAT,SDECPATID,SDECRES,SDECSTART
 N DIK,DA,SDECID,SDECI,SDECZ,SDECIENS,SDECEND
 ;
 S SDECI=0
 K ^TMP("SDEC",$J)
 S SDECY="^TMP(""SDEC"","_$J_")"
 S ^TMP("SDEC",$J,SDECI)="T00020ERRORID"_$C(30)
 S SDECI=SDECI+1
 ;validate SDEC appointment pointer
 I '+SDECAPTID D ERR(SDECI,"SDEC26: Invalid Appointment ID") Q
 I '$D(^SDEC(409.84,SDECAPTID,0)) D ERR(SDECI,"SDEC26: Invalid Appointment ID") Q
 ;TSTART
 ;Add WP field
 ;I SDECNOTE]"" S SDECNOTE(.5)=SDECNOTE,SDECNOTE=""
 S SDECNOTE(1)=SDECNOTE,SDECNOTE=""
 ;I $D(SDECNOTE(0)) S SDECNOTE(.5)=SDECNOTE(0) K SDECNOTE(0)
 I $D(SDECNOTE(1)) D
 . D WP^DIE(409.84,SDECAPTID_",",1,"","SDECNOTE","SDECMSG")
 ;
 ;Edit appointment length
 I $G(SDECLEN),$G(SDECLEN)>0 D
 . S SDECSTART=$$GET1^DIQ(409.84,SDECAPTID,.01,"I"),SDECEND=$$GET1^DIQ(409.84,SDECAPTID,.02,"I")
 . S SDECOLEN=$$FMDIFF^XLFDT(SDECEND,SDECSTART,2),SDECOLEN=SDECOLEN/60
 . Q:SDECOLEN=SDECLEN
 . S SDECRES=$$GET1^DIQ(409.84,SDECAPTID,.07,"I") Q:'SDECRES
 . S SDECPAT=$$GET1^DIQ(409.84,SDECAPTID,.05,"I") Q:'SDECPAT
 . S SDECCL=$$GET1^DIQ(409.831,SDECRES,.04,"I") Q:'SDECCL
 . S SDECAP=0 F  S SDECAP=$O(^SC(SDECCL,"S",SDECSTART,1,SDECAP)) Q:'SDECAP  D
 . . S SDECIENS=SDECAP_","_SDECSTART_","_SDECCL_","
 . . I $$GET1^DIQ(44.003,SDECIENS,.01,"I")=SDECPAT,$$GET1^DIQ(44.003,SDECIENS,1,"I")=SDECOLEN D
 . . . S FDA(44.003,SDECIENS,1)=SDECLEN D FILE^DIE(,"FDA") K FDA
 . . . S SDECNEND=$$FMADD^XLFDT(SDECSTART,,,SDECLEN)
 . . . S FDA(409.84,SDECAPTID_",",.02)=SDECNEND D FILE^DIE(,"FDA") K FDA
 ;
 ;Return Recordset
 ;TCOMMIT
 S SDECI=SDECI+1
 S ^TMP("SDEC",$J,SDECI)="-1"_$C(30)
 S SDECI=SDECI+1
 S ^TMP("SDEC",$J,SDECI)=$C(31)
 Q
 ;
 ;
ERR(SDECI,SDECERR) ;Error processing
 S SDECI=SDECI+1
 TROLLBACK
 S ^TMP("SDEC",$J,SDECI)=SDECERR_$C(30)
 S SDECI=SDECI+1
 S ^TMP("SDEC",$J,SDECI)=$C(31)
 Q
 ;
ETRAP ;EP Error trap entry
 TROLLBACK
 D ^%ZTER
 I '$D(SDECI) N SDECI S SDECI=999999
 S SDECI=SDECI+1
 D ERR(SDECI,"SDEC26 Error")
 Q
