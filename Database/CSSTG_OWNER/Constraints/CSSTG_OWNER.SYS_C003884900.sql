ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  SFA_TRNS_COD_CRDLV NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  SFA_TRNS_COD_CRDLV NOT NULL
  ENABLE VALIDATE
/
