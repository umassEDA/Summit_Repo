ALTER TABLE CSMRT_OWNER.UM_F_ADM_APPL_TRANSFER MODIFY 
  TRNSFR_STAT NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_ADM_APPL_TRANSFER MODIFY 
  TRNSFR_STAT NOT NULL
  ENABLE VALIDATE
/
