ALTER TABLE CSSTG_OWNER.PS_UM_FA_GRAD_STG MODIFY 
  UM_LOAN_NEED NULL
/

ALTER TABLE CSSTG_OWNER.PS_UM_FA_GRAD_STG MODIFY 
  UM_LOAN_NEED NOT NULL
  ENABLE VALIDATE
/