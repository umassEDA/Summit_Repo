ALTER TABLE CSMRT_OWNER.UM_D_TRANSFER_DICT
  DROP CONSTRAINT PK_UM_D_TRANSFER_DICT
/

ALTER TABLE CSMRT_OWNER.UM_D_TRANSFER_DICT ADD (
  CONSTRAINT PK_UM_D_TRANSFER_DICT
  PRIMARY KEY
  (TRNSFR_DICT_SID)
  RELY
  ENABLE VALIDATE)
/
