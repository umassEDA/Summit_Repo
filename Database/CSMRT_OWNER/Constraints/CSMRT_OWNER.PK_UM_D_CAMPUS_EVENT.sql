ALTER TABLE CSMRT_OWNER.UM_D_CAMPUS_EVENT
  DROP CONSTRAINT PK_UM_D_CAMPUS_EVENT
/

ALTER TABLE CSMRT_OWNER.UM_D_CAMPUS_EVENT ADD (
  CONSTRAINT PK_UM_D_CAMPUS_EVENT
  PRIMARY KEY
  (CAMPUS_EVENT_SID)
  RELY
  DISABLE NOVALIDATE)
/
