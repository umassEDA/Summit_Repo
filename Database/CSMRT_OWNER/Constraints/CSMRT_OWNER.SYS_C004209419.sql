ALTER TABLE CSMRT_OWNER.UM_F_FA_ISIR_AUDIT MODIFY 
  ISIR_CORR_TO_BLANK NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_FA_ISIR_AUDIT MODIFY 
  ISIR_CORR_TO_BLANK NOT NULL
  ENABLE VALIDATE
/