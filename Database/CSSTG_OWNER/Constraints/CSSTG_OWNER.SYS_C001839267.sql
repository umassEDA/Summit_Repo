ALTER TABLE CSSTG_OWNER.PS_T_BI_BILL_HEADER MODIFY 
  BILL_BY_IND NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_BI_BILL_HEADER MODIFY 
  BILL_BY_IND NOT NULL
  ENABLE VALIDATE
/
