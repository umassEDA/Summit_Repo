ALTER TABLE CSMRT_OWNER.PS_D_RECRT_CNTR
  DROP CONSTRAINT PK_PS_D_RECRT_CNTR
/

ALTER TABLE CSMRT_OWNER.PS_D_RECRT_CNTR ADD (
  CONSTRAINT PK_PS_D_RECRT_CNTR
  PRIMARY KEY
  (RECRT_CNTR_SID)
  RELY
  DISABLE NOVALIDATE)
/
