ALTER TABLE CSMRT_OWNER.UM_R_ENRL_MSG_LOG MODIFY 
  ENRL_REQ_DETL_SEQ NULL
/

ALTER TABLE CSMRT_OWNER.UM_R_ENRL_MSG_LOG MODIFY 
  ENRL_REQ_DETL_SEQ NOT NULL
  ENABLE VALIDATE
/