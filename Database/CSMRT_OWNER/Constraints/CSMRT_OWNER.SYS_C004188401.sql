ALTER TABLE CSMRT_OWNER.UM_A_SRVC_IND MODIFY 
  SRVC_IND_REASON NULL
/

ALTER TABLE CSMRT_OWNER.UM_A_SRVC_IND MODIFY 
  SRVC_IND_REASON NOT NULL
  ENABLE VALIDATE
/
