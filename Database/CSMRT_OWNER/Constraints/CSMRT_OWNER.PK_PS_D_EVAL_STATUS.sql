ALTER TABLE CSMRT_OWNER.PS_D_EVAL_STATUS
  DROP CONSTRAINT PK_PS_D_EVAL_STATUS
/

ALTER TABLE CSMRT_OWNER.PS_D_EVAL_STATUS ADD (
  CONSTRAINT PK_PS_D_EVAL_STATUS
  PRIMARY KEY
  (EVAL_STAT_SID)
  RELY
  DISABLE NOVALIDATE)
/