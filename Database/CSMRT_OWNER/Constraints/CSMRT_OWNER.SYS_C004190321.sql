ALTER TABLE CSMRT_OWNER.UM_F_COMM_PERSON MODIFY 
  PERSON_COMPLETED_SID NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_COMM_PERSON MODIFY 
  PERSON_COMPLETED_SID NOT NULL
  ENABLE VALIDATE
/
