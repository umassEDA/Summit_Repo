ALTER TABLE CSSTG_OWNER.PS_DEPT_TBL MODIFY 
  ACCOUNTING_OWNER NULL
/

ALTER TABLE CSSTG_OWNER.PS_DEPT_TBL MODIFY 
  ACCOUNTING_OWNER NOT NULL
  ENABLE VALIDATE
/
