ALTER TABLE CSSTG_OWNER.PS_K_BI_BILL_HEADER MODIFY 
  SRC_SYS_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_K_BI_BILL_HEADER MODIFY 
  SRC_SYS_ID NOT NULL
  ENABLE VALIDATE
/