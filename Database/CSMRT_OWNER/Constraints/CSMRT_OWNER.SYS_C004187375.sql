ALTER TABLE CSMRT_OWNER.UM_F_SF_BILLING MODIFY 
  SCC_ROW_ADD_OPRID NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_SF_BILLING MODIFY 
  SCC_ROW_ADD_OPRID NOT NULL
  ENABLE VALIDATE
/