ALTER TABLE CSMRT_OWNER.UM_D_ACAD_SPLAN MODIFY 
  ACAD_SPLAN_TYPE_SD NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_ACAD_SPLAN MODIFY 
  ACAD_SPLAN_TYPE_SD NOT NULL
  ENABLE VALIDATE
/
