ALTER TABLE CSSTG_OWNER.PS_T_SF_ACCTG_LN MODIFY 
  SSF_GL_TRANS_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_SF_ACCTG_LN MODIFY 
  SSF_GL_TRANS_ID NOT NULL
  ENABLE VALIDATE
/
