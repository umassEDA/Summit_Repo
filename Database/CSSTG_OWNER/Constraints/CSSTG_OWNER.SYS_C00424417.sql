ALTER TABLE CSSTG_OWNER.PS_S_COUNTRY_TBL_OLD MODIFY 
  COUNTRY_2CHAR NULL
/

ALTER TABLE CSSTG_OWNER.PS_S_COUNTRY_TBL_OLD MODIFY 
  COUNTRY_2CHAR NOT NULL
  ENABLE VALIDATE
/