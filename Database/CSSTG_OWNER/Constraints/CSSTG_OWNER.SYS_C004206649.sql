ALTER TABLE CSSTG_OWNER.PS_UM_ADM_APP_TMP MODIFY 
  UM_ADM_PREV_APPLD NULL
/

ALTER TABLE CSSTG_OWNER.PS_UM_ADM_APP_TMP MODIFY 
  UM_ADM_PREV_APPLD NOT NULL
  ENABLE VALIDATE
/
