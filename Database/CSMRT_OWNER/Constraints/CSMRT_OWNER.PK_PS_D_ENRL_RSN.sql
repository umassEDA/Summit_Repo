ALTER TABLE CSMRT_OWNER.PS_D_ENRL_RSN
  DROP CONSTRAINT PK_PS_D_ENRL_RSN
/

ALTER TABLE CSMRT_OWNER.PS_D_ENRL_RSN ADD (
  CONSTRAINT PK_PS_D_ENRL_RSN
  PRIMARY KEY
  (ENRL_ACT_RSN_SID)
  RELY
  DISABLE NOVALIDATE)
/