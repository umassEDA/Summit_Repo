ALTER TABLE CSSTG_OWNER.PS_T_BI_BILL_HEADER MODIFY 
  EXT_ORG_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_BI_BILL_HEADER MODIFY 
  EXT_ORG_ID NOT NULL
  ENABLE VALIDATE
/
