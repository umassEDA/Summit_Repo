ALTER TABLE CSSTG_OWNER.PS_S_COMPANY_TBL_OLD MODIFY 
  COMMON_PAY_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_S_COMPANY_TBL_OLD MODIFY 
  COMMON_PAY_ID NOT NULL
  ENABLE VALIDATE
/
