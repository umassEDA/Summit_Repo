ALTER TABLE CSMRT_OWNER.PS_D_CAMPUS
  DROP CONSTRAINT PK_PS_D_CAMPUS
/

ALTER TABLE CSMRT_OWNER.PS_D_CAMPUS ADD (
  CONSTRAINT PK_PS_D_CAMPUS
  PRIMARY KEY
  (CAMPUS_SID)
  RELY
  DISABLE NOVALIDATE)
/