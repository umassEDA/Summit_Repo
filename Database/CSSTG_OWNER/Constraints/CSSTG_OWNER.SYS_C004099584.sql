ALTER TABLE CSSTG_OWNER.PS_ISIR_PARENT MODIFY 
  SFA_CHILD_SUP_RECV NULL
/

ALTER TABLE CSSTG_OWNER.PS_ISIR_PARENT MODIFY 
  SFA_CHILD_SUP_RECV NOT NULL
  ENABLE VALIDATE
/
