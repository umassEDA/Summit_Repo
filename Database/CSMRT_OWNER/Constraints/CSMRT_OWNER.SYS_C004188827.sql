ALTER TABLE CSMRT_OWNER.UM_D_TRANSFER_DICT MODIFY 
  TRNSFR_EQVLNCY_CMP NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_TRANSFER_DICT MODIFY 
  TRNSFR_EQVLNCY_CMP NOT NULL
  ENABLE VALIDATE
/
