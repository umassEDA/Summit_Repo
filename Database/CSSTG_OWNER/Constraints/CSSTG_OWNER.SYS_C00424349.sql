ALTER TABLE CSSTG_OWNER.PS_S_COMPANY_TBL_OLD MODIFY 
  FACT_YEAR_BASE_BEL NULL
/

ALTER TABLE CSSTG_OWNER.PS_S_COMPANY_TBL_OLD MODIFY 
  FACT_YEAR_BASE_BEL NOT NULL
  ENABLE VALIDATE
/
