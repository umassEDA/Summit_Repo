ALTER TABLE CSMRT_OWNER.UM_F_TRANSFER MODIFY 
  ACAD_PLAN_TARGET_SID NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_TRANSFER MODIFY 
  ACAD_PLAN_TARGET_SID NOT NULL
  ENABLE VALIDATE
/