ALTER TABLE CSSTG_OWNER.PS_T_BI_BILL_HEADER MODIFY 
  BI_SCAN_LINE NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_BI_BILL_HEADER MODIFY 
  BI_SCAN_LINE NOT NULL
  ENABLE VALIDATE
/
