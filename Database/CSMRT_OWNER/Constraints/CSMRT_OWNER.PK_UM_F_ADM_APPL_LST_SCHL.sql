ALTER TABLE CSMRT_OWNER.UM_F_ADM_APPL_LST_SCHL
  DROP CONSTRAINT PK_UM_F_ADM_APPL_LST_SCHL
/

ALTER TABLE CSMRT_OWNER.UM_F_ADM_APPL_LST_SCHL ADD (
  CONSTRAINT PK_UM_F_ADM_APPL_LST_SCHL
  PRIMARY KEY
  (APPLCNT_SID, INSTITUTION_SID, EXT_ORG_SID, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
