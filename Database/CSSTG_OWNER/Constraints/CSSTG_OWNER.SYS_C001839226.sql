ALTER TABLE CSSTG_OWNER.PS_T_BI_BILL_HEADER MODIFY 
  TOTAL_BILL NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_BI_BILL_HEADER MODIFY 
  TOTAL_BILL NOT NULL
  ENABLE VALIDATE
/