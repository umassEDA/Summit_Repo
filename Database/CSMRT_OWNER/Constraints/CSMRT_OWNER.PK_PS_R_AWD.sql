ALTER TABLE CSMRT_OWNER.PS_R_AWD
  DROP CONSTRAINT PK_PS_R_AWD
/

ALTER TABLE CSMRT_OWNER.PS_R_AWD ADD (
  CONSTRAINT PK_PS_R_AWD
  PRIMARY KEY
  (PERSON_SID, AWD_SID, AWD_RCVD_DT, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
