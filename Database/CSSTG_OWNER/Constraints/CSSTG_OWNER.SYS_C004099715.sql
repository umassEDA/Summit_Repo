ALTER TABLE CSSTG_OWNER.PS_ISIR_STUDENT MODIFY 
  ELIG_FOR_1040A_EZ NULL
/

ALTER TABLE CSSTG_OWNER.PS_ISIR_STUDENT MODIFY 
  ELIG_FOR_1040A_EZ NOT NULL
  ENABLE VALIDATE
/