ALTER TABLE CSMRT_OWNER.UM_F_STDNT_RESPONSE
  DROP CONSTRAINT PK_UM_F_STDNT_RESPONSE
/

ALTER TABLE CSMRT_OWNER.UM_F_STDNT_RESPONSE ADD (
  CONSTRAINT PK_UM_F_STDNT_RESPONSE
  PRIMARY KEY
  (PERSON_ID, ACAD_CAR_CD, STU_CAR_NBR, ADM_APPL_NBR, SEQNUM, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/