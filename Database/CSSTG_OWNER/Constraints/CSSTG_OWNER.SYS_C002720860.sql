ALTER TABLE CSSTG_OWNER.PS_T_STDNT_ENRL MODIFY 
  ENRL_STATUS_REASON NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_STDNT_ENRL MODIFY 
  ENRL_STATUS_REASON NOT NULL
  ENABLE VALIDATE
/