ALTER TABLE CSMRT_OWNER.UM_D_ACAD_SPLAN MODIFY 
  SPLAN_REQTRM_DFLT_SD NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_ACAD_SPLAN MODIFY 
  SPLAN_REQTRM_DFLT_SD NOT NULL
  ENABLE VALIDATE
/
