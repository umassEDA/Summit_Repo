ALTER TABLE CSMRT_OWNER.UM_D_TRANSFER_DICT MODIFY 
  UM_SSR_TR_DEF_GRD_TYP NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_TRANSFER_DICT MODIFY 
  UM_SSR_TR_DEF_GRD_TYP NOT NULL
  ENABLE VALIDATE
/