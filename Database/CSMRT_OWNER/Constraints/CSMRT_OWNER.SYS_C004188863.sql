ALTER TABLE CSMRT_OWNER.UM_D_TRANSFER_DICT MODIFY 
  TRNSFR_SUBJ_DESCR NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_TRANSFER_DICT MODIFY 
  TRNSFR_SUBJ_DESCR NOT NULL
  ENABLE VALIDATE
/