ALTER TABLE CSMRT_OWNER.UM_F_FA_ISIR_AUDIT MODIFY 
  INSTITUTION_SID NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_FA_ISIR_AUDIT MODIFY 
  INSTITUTION_SID NOT NULL
  ENABLE VALIDATE
/
