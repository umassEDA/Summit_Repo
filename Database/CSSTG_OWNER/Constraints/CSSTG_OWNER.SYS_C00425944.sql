ALTER TABLE CSSTG_OWNER.PS_BI_TYPE_TBL MODIFY 
  BILL_TYPE_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_BI_TYPE_TBL MODIFY 
  BILL_TYPE_ID NOT NULL
  ENABLE VALIDATE
/
