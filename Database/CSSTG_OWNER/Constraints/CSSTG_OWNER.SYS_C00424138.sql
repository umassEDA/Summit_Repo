ALTER TABLE CSSTG_OWNER.PS_PERS_DATA_USF_OLD MODIFY 
  GVT_CURR_AGCY_EMPL NULL
/

ALTER TABLE CSSTG_OWNER.PS_PERS_DATA_USF_OLD MODIFY 
  GVT_CURR_AGCY_EMPL NOT NULL
  ENABLE VALIDATE
/