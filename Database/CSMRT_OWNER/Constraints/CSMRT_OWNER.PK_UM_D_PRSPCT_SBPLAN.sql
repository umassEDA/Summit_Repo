ALTER TABLE CSMRT_OWNER.UM_D_PRSPCT_SBPLAN
  DROP CONSTRAINT PK_UM_D_PRSPCT_SBPLAN
/

ALTER TABLE CSMRT_OWNER.UM_D_PRSPCT_SBPLAN ADD (
  CONSTRAINT PK_UM_D_PRSPCT_SBPLAN
  PRIMARY KEY
  (PRSPCT_SPLAN_SID)
  RELY
  DISABLE NOVALIDATE)
/
