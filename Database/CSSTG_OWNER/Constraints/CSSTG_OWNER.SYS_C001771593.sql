ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_DTL MODIFY 
  CL_SERV_TYPE_CD NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_DTL MODIFY 
  CL_SERV_TYPE_CD NOT NULL
  ENABLE VALIDATE
/