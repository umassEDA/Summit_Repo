ALTER TABLE CSSTG_OWNER.PS_T_BI_BILL_HEADER MODIFY 
  TUITION_RES NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_BI_BILL_HEADER MODIFY 
  TUITION_RES NOT NULL
  ENABLE VALIDATE
/