AWCMCPR4        ;VISN7/THM-NIGHT TIME MOVEMENT OF DATA ; 09 Jan 2004  3:43 PM
 ;;7.3;TOOLKIT;**84**;Jan 9, 2004
 ;
EN ;This should be run after midnight so it processes the previous day.
 S X="T-1",%DT="" D ^%DT S AWCSDT=Y,AWCX=(AWCSDT-.000001),AWCEDT=(Y+.2359)
 F AWCX=AWCX:0 S AWCX=$O(^XTMP("AWCCPRS",AWCX)) Q:AWCX>AWCEDT!(AWCX="")  F AWCDA=0:0 S AWCDA=$O(^XTMP("AWCCPRS",AWCX,AWCDA)) Q:AWCDA=""  DO
 .S AWCD1=$G(^XTMP("AWCCPRS",AWCX,AWCDA,0))
 .S AWCSTRT=$P(AWCD1,U),AWCEND=$P(AWCD1,U,2),AWCDUZ=$P(AWCD1,U,3),AWCDUZ(2)=$P(AWCD1,U,4),AWCTYPE=$P(AWCD1,U,5)
 .I AWCDUZ(2)="" S AWCDUZ(2)=+$$SITE^VASITE ;for people without division assignments
 .S AWCSEC=$$HDIFF^XLFDT(AWCEND,AWCSTRT,2)
 .S AWCFMDT=$$HTFM^XLFDT(AWCSTRT)
 .L +^AWC(177100.13,0):1 Q:'$T
 .S AWCDATA=^AWC(177100.13,0)
 .S $P(AWCDATA,"^",3)=$P(AWCDATA,"^",3)+1,AWCIEN(1)=$P(AWCDATA,"^",3)
 .S ^AWC(177100.13,0)=AWCDATA
 .L -^AWC(177100.13,0)
 .K AWCDATA
 .S AWCDATA(177100.13,"+1,",.01)=AWCIEN(1)
 .S AWCDATA(177100.13,"+1,",1)=AWCSEC
 .S AWCDATA(177100.13,"+1,",2)=AWCDUZ
 .S AWCDATA(177100.13,"+1,",3)=AWCFMDT
 .S AWCDATA(177100.13,"+1,",4)=AWCDUZ(2)
 .S AWCDATA(177100.13,"+1,",5)=AWCTYPE
 .D UPDATE^DIE("","AWCDATA","AWCIEN")
 .K AWCDATA,AWCIEN
 K AWCSDT,AWCX,AWCDA,AWCD1,AWCSTRT,AWCEND,AWCDUZ,AWCTYPE
 K AWCFMDT,AWCDATA,AWCIEN,AWCSEC,AWCEDT,%DT,X,Y
 Q
