ALTER TABLE CSSTG_OWNER.PS_UM_ADM_APP_TMP MODIFY 
  UM_ADM_CNOW_LOW_IN NULL
/

ALTER TABLE CSSTG_OWNER.PS_UM_ADM_APP_TMP MODIFY 
  UM_ADM_CNOW_LOW_IN NOT NULL
  ENABLE VALIDATE
/
