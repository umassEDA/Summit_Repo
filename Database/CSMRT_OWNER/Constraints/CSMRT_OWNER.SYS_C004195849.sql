ALTER TABLE CSMRT_OWNER.UM_F_STDNT_TRANSFER MODIFY 
  TRNSFR_EQVLNCY_GRP NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_STDNT_TRANSFER MODIFY 
  TRNSFR_EQVLNCY_GRP NOT NULL
  ENABLE VALIDATE
/
