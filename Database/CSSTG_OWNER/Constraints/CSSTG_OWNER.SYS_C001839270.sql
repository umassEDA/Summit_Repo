ALTER TABLE CSSTG_OWNER.PS_T_BI_BILL_HEADER MODIFY 
  CONTRACT_EMPLID NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_BI_BILL_HEADER MODIFY 
  CONTRACT_EMPLID NOT NULL
  ENABLE VALIDATE
/
