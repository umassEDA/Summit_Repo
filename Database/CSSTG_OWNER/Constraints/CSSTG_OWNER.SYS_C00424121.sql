ALTER TABLE CSSTG_OWNER.PS_PERS_DATA_USF_OLD MODIFY 
  GVT_CRED_MIL_SVCE NULL
/

ALTER TABLE CSSTG_OWNER.PS_PERS_DATA_USF_OLD MODIFY 
  GVT_CRED_MIL_SVCE NOT NULL
  ENABLE VALIDATE
/