DVBAPOP2 ;ALB/JLU;another post init population routine
 ;;2.7;AMIE;;Apr 10, 1995
 ;
SETPTR ;This entry point sets up the pointers from file 396.6 to 396.7
 ;this data could not come in with difrom because difrom does not
 ;evaluate pointers.
 ;
 N DVBX,DVBX1,DVBX2,DVBX3,DVBX4,VAR
 S DVBX3=0
 F DVBX=1:1 S DVBX1=$T(EXAM+DVBX) Q:DVBX1'[";;"  DO
 .S DVBX1=$P(DVBX1,";;",2)
 .S DVBX2=$P(DVBX1,U,2)
 .S DVBX1=$P(DVBX1,U,1)
 .S IEN3966=$$IEN6^DVBAPOPU(DVBX1)
 .Q:'+IEN3966
 .S IEN3967=$$IEN7^DVBAPOPU(DVBX2)
 .Q:'+IEN3967
 .I $P(^DVB(396.6,IEN3966,0),U,3)'=IEN3967 DO
 ..S DVBX4=$P(^DVB(396.6,IEN3966,0),U,3)
 ..S DIE="^DVB(396.6,",DA=IEN3966,DR="2////"_IEN3967
 ..D ^DIE
 ..S DVBX3=DVBX3+1
 ..D BUMPBLK^DVBAPOST
 ..S VAR="Changed record "_IEN3966_" of the AMIE Exam File from  "_DVBX4_" to "_IEN3967
 ..W !,VAR D BUMP^DVBAPOST(VAR)
 ..Q
 .Q
 S VAR=" - Updating AMIE Exam file pointers to the 2507 Body System file is complete"
 D BUMPBLK^DVBAPOST
 D BUMPBLK^DVBAPOST
 W !!,VAR D BUMP^DVBAPOST(VAR)
 S VAR=DVBX3_" records were updated."
 W !,VAR D BUMP^DVBAPOST(VAR)
 Q
 ;
EXAM ;
 ;;AGENT ORANGE^SPECIAL
 ;;AID AND ATTENDANCE/HOUSEBOUND^SPECIAL
 ;;ALIMENTARY APPENDAGES^DIGESTIVE
 ;;AMPUTATION STUMPS^ORTHOPEDIC
 ;;AUDIO^ORGANS OF SENSE
 ;;AUDIO-EAR DISEASE^ORGANS OF SENSE
 ;;BONES^ORTHOPEDIC
 ;;CARDIOVASCULAR (NEC)^CARDIOVASCULAR
 ;;CRANIAL NERVES^NEUROLOGICAL
 ;;CYSTITIS,BLADDER CALC.,BLADDER INJURY,PROSTATE,SURG. RESID.^GENITOURINARY
 ;;DENTAL^DENTAL
 ;;DIABETES INSIPIDUS^ENDOCRINE
 ;;DIABETES MELLITUS^ENDOCRINE
 ;;DIGESTIVE (NEC)^DIGESTIVE
 ;;DISEASES OF ARTERIES/VEINS^CARDIOVASCULAR
 ;;DISEASES OF THE HEART^CARDIOVASCULAR
 ;;DISEASES/INJURIES OF THE BRAIN^NEUROLOGICAL
 ;;DISEASES/INJURIES OF THE SPINAL CORD^NEUROLOGICAL
 ;;ENDOCRINE DISORDERS (NEC)^ENDOCRINE
 ;;EPILEPSY AND NARCOLEPSY^NEUROLOGICAL
 ;;ESOPHAGUS^DIGESTIVE
 ;;FEET^ORTHOPEDIC
 ;;GENERAL MEDICAL^GENERAL MEDICAL
 ;;GENITOURINARY (NEC)^GENITOURINARY
 ;;GYNECOLOGICAL^GYNECOLOGICAL
 ;;GYNECOLOGICAL (NEC)^GYNECOLOGICAL
 ;;HAND, THUMB, FINGERS^ORTHOPEDIC
 ;;HEMATOLOGIC DISORDERS^HEMATOLOGICAL
 ;;HEMATOLOGIC DISORDERS-BLOOD^HEMATOLOGICAL
 ;;HEMATOLOGIC DISORDERS-LYMPHATIC^HEMATOLOGICAL
 ;;HEMATOLOGICAL (NEC)^HEMATOLOGICAL
 ;;HIGHER LEVEL AID AND ATTENDANCE^SPECIAL
 ;;HIP^ORTHOPEDIC
 ;;HYPERPARATHYROIDISM^ENDOCRINE
 ;;HYPERPITUITARISM (CUSHINGS SYNDROME)^ENDOCRINE
 ;;HYPERTENSION^CARDIOVASCULAR
 ;;HYPERTHYROIDISM, THYROID ADENOMA^ENDOCRINE
 ;;HYPOTHYROIDISM^ENDOCRINE
 ;;INTESTINE^DIGESTIVE
 ;;JOINTS^ORTHOPEDIC
 ;;LOSS OF PENIS, ALL OR PARTIAL^GENITOURINARY
 ;;MALIGNANCIES OR TUBERCULOSIS^GENITOURINARY
 ;;MAMMARY^GYNECOLOGICAL
 ;;MENTAL (NEC)^MENTAL
 ;;MENTAL DISORDERS^MENTAL
 ;;MISCELLANEOUS NEUROLOGICAL DISORDERS^NEUROLOGICAL
 ;;MOUTH AND THROAT^ORGANS OF SENSE
 ;;MUSCLES^ORTHOPEDIC
 ;;MUSCULOSKELETAL (NEC)^ORTHOPEDIC
 ;;NECK - NOT SPINAL CONDITION^ORTHOPEDIC
 ;;NEPHRITIS, ALL FORMS EXCEPT CHRONIC PYELONEPHRITIS^NEPHROLOGICAL
 ;;NEPHROLOGICAL^NEPHROLOGICAL
 ;;NEPHROLOGICAL (NEC)^NEPHROLOGICAL
 ;;NEUROLOGICAL (NEC)^NEUROLOGICAL
 ;;NON-TUBERCULOSIS DISEASES AND INJURIES^PULMONARY
 ;;NOSE AND SINUSES^ORGANS OF SENSE
 ;;NOSE AND THROAT (PULMONARY)^PULMONARY
 ;;ORGANS OF SENSE (NEC)^ORGANS OF SENSE
 ;;OTHER GENITOURINARY^GENITOURINARY
 ;;PERIPHERAL NERVES^NEUROLOGICAL
 ;;PITUITARY TUMORS^ENDOCRINE
 ;;POST-TRAUMATIC STRESS DISORDER^MENTAL
 ;;PRISONER OF WAR^SPECIAL
 ;;PULMONARY (NEC)^PULMONARY
 ;;PULMONARY TUBERCULOSIS AND TUBERCULOSIS DISEASES^PULMONARY
 ;;PYELITIS, NEPHROLITHIAIS, ETC.^GENITOURINARY
 ;;RECTUM AND ANUS^DIGESTIVE
 ;;REGULAR AID AND ATTENDANCE/HOUSEBOUND^SPECIAL
 ;;RESPIRATORY MANIF. OF DISEASES OF OTHER SYSTEMS^PULMONARY
 ;;SCARS^ORTHOPEDIC
 ;;SCARS (BURN)^SKIN
 ;;SCARS (SKIN)^SKIN
 ;;SENSE OF SMELL^ORGANS OF SENSE
 ;;SENSE OF TASTE^ORGANS OF SENSE
 ;;SKIN (NEC)^SKIN
 ;;SKIN (OTHER THAN SCARS)^SKIN
 ;;SPINE^ORTHOPEDIC
 ;;STOMACH^DIGESTIVE
 ;;SYSTEMIC CONDITIONS^SYSTEMIC
 ;;TESTES, TRAUMA OR DISEASE^GENITOURINARY
 ;;TRACHEA AND BRONCHI^PULMONARY
 ;;URETHRAL FISTULA^GENITOURINARY
 ;;VISUAL^ORGANS OF SENSE
