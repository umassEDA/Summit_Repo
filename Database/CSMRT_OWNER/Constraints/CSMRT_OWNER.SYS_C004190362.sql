ALTER TABLE CSMRT_OWNER.UM_F_COMM_PERSON MODIFY 
  JOINT_COMM_FLG NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_COMM_PERSON MODIFY 
  JOINT_COMM_FLG NOT NULL
  ENABLE VALIDATE
/
