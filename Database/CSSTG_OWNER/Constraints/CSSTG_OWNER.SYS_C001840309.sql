ALTER TABLE CSSTG_OWNER.PS_ACCOUNT_SF MODIFY 
  BILL_REQ_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_ACCOUNT_SF MODIFY 
  BILL_REQ_ID NOT NULL
  ENABLE VALIDATE
/