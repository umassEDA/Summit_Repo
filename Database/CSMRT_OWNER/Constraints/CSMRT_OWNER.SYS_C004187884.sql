ALTER TABLE CSMRT_OWNER.UM_F_STDNT_ENRL_REQ MODIFY 
  ENRL_ACTION_REASON NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_STDNT_ENRL_REQ MODIFY 
  ENRL_ACTION_REASON NOT NULL
  ENABLE VALIDATE
/
