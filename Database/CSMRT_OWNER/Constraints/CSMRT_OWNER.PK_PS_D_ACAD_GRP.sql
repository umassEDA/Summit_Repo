ALTER TABLE CSMRT_OWNER.PS_D_ACAD_GRP
  DROP CONSTRAINT PK_PS_D_ACAD_GRP
/

ALTER TABLE CSMRT_OWNER.PS_D_ACAD_GRP ADD (
  CONSTRAINT PK_PS_D_ACAD_GRP
  PRIMARY KEY
  (ACAD_GRP_SID, EFFDT)
  RELY
  DISABLE NOVALIDATE)
/