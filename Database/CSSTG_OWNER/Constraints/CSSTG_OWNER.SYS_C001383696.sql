ALTER TABLE CSSTG_OWNER.PS_UM_FA_GRAD_STG MODIFY 
  UM_GRANT_DECLINE NULL
/

ALTER TABLE CSSTG_OWNER.PS_UM_FA_GRAD_STG MODIFY 
  UM_GRANT_DECLINE NOT NULL
  ENABLE VALIDATE
/
