ALTER TABLE CSMRT_OWNER.PS_R_PERSON_RSDNCY MODIFY 
  FA_FED_RSDNCY_EXCPTN NULL
/

ALTER TABLE CSMRT_OWNER.PS_R_PERSON_RSDNCY MODIFY 
  FA_FED_RSDNCY_EXCPTN NOT NULL
  ENABLE VALIDATE
/