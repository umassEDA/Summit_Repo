ALTER TABLE CSMRT_OWNER.UM_F_SF_BILLING MODIFY 
  BILL_DATE_TIME NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_SF_BILLING MODIFY 
  BILL_DATE_TIME NOT NULL
  ENABLE VALIDATE
/
