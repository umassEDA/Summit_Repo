ALTER TABLE CSSTG_OWNER.PS_T_STDNT_ENRL MODIFY 
  ENRL_REQ_SOURCE NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_STDNT_ENRL MODIFY 
  ENRL_REQ_SOURCE NOT NULL
  ENABLE VALIDATE
/