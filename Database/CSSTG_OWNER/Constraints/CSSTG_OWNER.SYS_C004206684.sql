ALTER TABLE CSSTG_OWNER.PS_UM_ADM_APP_TMP MODIFY 
  UM_ADM_LAW_PRV_APP NULL
/

ALTER TABLE CSSTG_OWNER.PS_UM_ADM_APP_TMP MODIFY 
  UM_ADM_LAW_PRV_APP NOT NULL
  ENABLE VALIDATE
/
