ALTER TABLE CSSTG_OWNER.PS_CIP_CODE_TBL MODIFY 
  SEV_VALID_CIP_CD NULL
/

ALTER TABLE CSSTG_OWNER.PS_CIP_CODE_TBL MODIFY 
  SEV_VALID_CIP_CD NOT NULL
  ENABLE VALIDATE
/