ALTER TABLE CSMRT_OWNER.UM_F_FA_ISIR_COMMENTS MODIFY 
  INSTITUTION_CD NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_FA_ISIR_COMMENTS MODIFY 
  INSTITUTION_CD NOT NULL
  ENABLE VALIDATE
/
