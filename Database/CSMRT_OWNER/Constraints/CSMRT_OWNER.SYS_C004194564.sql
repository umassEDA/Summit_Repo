ALTER TABLE CSMRT_OWNER.UM_R_PERSON_RSDNCY MODIFY 
  FA_FED_RSDNCY_LD NULL
/

ALTER TABLE CSMRT_OWNER.UM_R_PERSON_RSDNCY MODIFY 
  FA_FED_RSDNCY_LD NOT NULL
  ENABLE VALIDATE
/