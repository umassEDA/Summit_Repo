ALTER TABLE CSMRT_OWNER.UM_D_TRANSFER_DICT MODIFY 
  TRNSFR_SRC_ID NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_TRANSFER_DICT MODIFY 
  TRNSFR_SRC_ID NOT NULL
  ENABLE VALIDATE
/