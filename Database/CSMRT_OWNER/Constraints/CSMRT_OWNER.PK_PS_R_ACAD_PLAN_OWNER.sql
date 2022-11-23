ALTER TABLE CSMRT_OWNER.PS_R_ACAD_PLAN_OWNER
  DROP CONSTRAINT PK_PS_R_ACAD_PLAN_OWNER
/

ALTER TABLE CSMRT_OWNER.PS_R_ACAD_PLAN_OWNER ADD (
  CONSTRAINT PK_PS_R_ACAD_PLAN_OWNER
  PRIMARY KEY
  (INSTITUTION_CD, ACAD_PLAN_CD, EFFDT, ACAD_ORG_CD, SRC_SYS_ID)
  RELY
  DISABLE NOVALIDATE)
/