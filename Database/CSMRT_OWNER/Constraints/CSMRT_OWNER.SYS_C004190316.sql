ALTER TABLE CSMRT_OWNER.UM_F_COMM_PERSON MODIFY 
  PERSON_ASSIGNED_SID NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_COMM_PERSON MODIFY 
  PERSON_ASSIGNED_SID NOT NULL
  ENABLE VALIDATE
/