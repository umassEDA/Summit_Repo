ALTER TABLE CSMRT_OWNER.UM_D_PERSON_SRVC_IND MODIFY 
  SRVC_IND_REASON NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_PERSON_SRVC_IND MODIFY 
  SRVC_IND_REASON NOT NULL
  ENABLE VALIDATE
/