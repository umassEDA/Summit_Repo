ALTER TABLE CSMRT_OWNER.UM_D_RFRL_DTL
  DROP CONSTRAINT PK_UM_D_RFRL_DTL
/

ALTER TABLE CSMRT_OWNER.UM_D_RFRL_DTL ADD (
  CONSTRAINT PK_UM_D_RFRL_DTL
  PRIMARY KEY
  (RFRL_DTL_SID)
  RELY
  DISABLE NOVALIDATE)
/