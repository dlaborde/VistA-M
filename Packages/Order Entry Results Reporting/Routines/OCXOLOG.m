OCXOLOG ;SLC/RJS,CLA - MAINTAIN RAW DATA LOG ;10/29/98  12:37
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**32**;Dec 17,1997
 ;;  ;;ORDER CHECK EXPERT version 1.01 released OCT 29,1998
 ;
NEW(OCXA,OCXS,OCXU,OCXP) ;
 ;
 ;  OCXA - ARRAY NAME
 ;  OCXS - DATA SOURCE
 ;  OCXU - USER
 ;  OCXP - PATIENT
 ;
 I '$D(^OCXD(861,1,0)) S ^OCXD(861,1,0)="SITE PREFERENCES"
 F  S OCXI=$O(^OCXD(861,"A"),-1)+1 L +^OCXD(861,OCXI):0 I  Q:'$D(^OCXD(861,OCXI))  L -^OCXD(861,OCXI)
 ;
 N OCXR,OCXTEMP,OCXD1,OCXD2
 ;
 S OCXDT=$$DATE_" "
 S OCXR(0)=OCXDT
 S OCXR("ARRAY")=OCXA
 S OCXR("JOB")=$J
 S:$L($G(OCXS)) OCXR("SOURCE")=$G(OCXS)
 S OCXR("VERSION")=$P($T(+3),";;",3)
 S OCXR("STATUS")="RUNNING"
 S:$G(OCXU) OCXR("USER")="["_OCXU_"] "_$P($G(^VA(200,+OCXU,0)),U,1)
 S:$G(OCXP) OCXR("PATIENT")="["_OCXP_"] "_$P($G(^DPT(+OCXP,0)),U,1)
 ;
 S OCXD1=0 F  S OCXD1=$O(@OCXA@(OCXD1)) Q:'(OCXD1)  D
 .N OCXTXT
 .S OCXTXT=@OCXA@(OCXD1)
 .I ($L(OCXTXT)<200) S OCXR("DATA",$$LAST+1,0)=OCXTXT Q
 .N OCXOVER,OCXOV0
 .F  Q:'$L(OCXTXT)  D
 ..S OCXR("DATA",$$LAST+1,0)=$E(OCXTXT,1,200)
 ..S OCXTXT=$E(OCXTXT,201,$L(OCXTXT))
 ..S:$L(OCXTXT) OCXTXT=">>>"_OCXTXT
 ;
 S:$O(OCXR("DATA",0)) OCXR("DATA",0)="^^"_$$LAST_"^"_$$LAST_"^"_$$TODAY
 ;
 M ^OCXD(861,OCXI)=OCXR
 S ^OCXD(861,"B",OCXDT,OCXI)=""
 S $P(^OCXD(861,0),"^",3)=$P(^OCXD(861,0),"^",3)+1
 S $P(^OCXD(861,0),"^",4)=OCXI
 ;
 L -^OCXD(861,OCXI)
 ;
 W:$G(OCXTRACE) !,"OCX Logging message ",OCXS," # ",OCXI
 ;
 K OCXR,OCXTEMP,OCXD1,OCXD2
 ;
 Q OCXI
 ;
FINISH(OCXL) ;
 ;
 I $G(OCXL),$D(^OCXD(861,OCXL,0)) S ^OCXD(861,OCXL,"STATUS")="FINISHED NORMALLY AT "_$$DATE
 Q
 ;
LAST() Q $O(OCXR("DATA",""),-1)
 ;
CLEAR N OCXX S OCXX=$P(^OCXD(861,0),U,1,2) K ^OCXD(861) S ^OCXD(861,0)=OCXX Q
 ;
DATE() N X,Y,%DT S X="N",%DT="ST" D ^%DT Q ((Y\1)+17000000)_"."_$E(1000000+((Y#1)*1000000),2,7)
 ;
TODAY() N X,Y,%DT S X="T",%DT="" D ^%DT Q Y
 ;
CONV(Y) Q:'(Y["@") Y Q $P(Y,"@",1)_" at "_$P(Y,"@",2,99)
 ;
PURGE ; Use this for an emergency purge of the raw data
 ; log in case of <diskfull> errors
 N OCXX S OCXX=$P($G(^OCXD(861,0)),"^",1,2) Q:'$L(OCXX)
 K ^OCXD(861) S ^OCXD(861,0)=OCXX
 Q
 ;
