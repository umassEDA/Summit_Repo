ALTER TABLE CSMRT_OWNER.UM_F_STDNT_TERM_TRANSFER_MV MODIFY 
  TRF_TRNSFR_EQVLNCY_GRP NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_STDNT_TERM_TRANSFER_MV MODIFY 
  TRF_TRNSFR_EQVLNCY_GRP NOT NULL
  ENABLE VALIDATE
/
