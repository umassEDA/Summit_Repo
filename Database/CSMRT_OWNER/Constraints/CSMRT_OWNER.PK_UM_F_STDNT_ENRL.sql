ALTER TABLE CSMRT_OWNER.UM_F_STDNT_ENRL
  DROP CONSTRAINT PK_UM_F_STDNT_ENRL
/

ALTER TABLE CSMRT_OWNER.UM_F_STDNT_ENRL ADD (
  CONSTRAINT PK_UM_F_STDNT_ENRL
  PRIMARY KEY
  (TERM_SID, PERSON_SID, CLASS_NUM, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/