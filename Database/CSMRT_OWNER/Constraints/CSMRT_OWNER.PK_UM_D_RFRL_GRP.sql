ALTER TABLE CSMRT_OWNER.UM_D_RFRL_GRP
  DROP CONSTRAINT PK_UM_D_RFRL_GRP
/

ALTER TABLE CSMRT_OWNER.UM_D_RFRL_GRP ADD (
  CONSTRAINT PK_UM_D_RFRL_GRP
  PRIMARY KEY
  (RFRL_GRP_SID)
  RELY
  DISABLE NOVALIDATE)
/
