ALTER TABLE CSMRT_OWNER.UM_R_PERSON_RSDNCY MODIFY 
  TUITION_RSDNCY_SID NULL
/

ALTER TABLE CSMRT_OWNER.UM_R_PERSON_RSDNCY MODIFY 
  TUITION_RSDNCY_SID NOT NULL
  ENABLE VALIDATE
/
