ALTER TABLE CSMRT_OWNER.UM_D_ACAD_PLAN MODIFY 
  ACAD_PLAN_TYPE_CD NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_ACAD_PLAN MODIFY 
  ACAD_PLAN_TYPE_CD NOT NULL
  ENABLE VALIDATE
/