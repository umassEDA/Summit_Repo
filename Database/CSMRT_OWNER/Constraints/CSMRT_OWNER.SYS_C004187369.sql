ALTER TABLE CSMRT_OWNER.PS_D_ENRL_HDR_STAT MODIFY 
  ENRL_REQ_PROC_ST NULL
/

ALTER TABLE CSMRT_OWNER.PS_D_ENRL_HDR_STAT MODIFY 
  ENRL_REQ_PROC_ST NOT NULL
  ENABLE VALIDATE
/