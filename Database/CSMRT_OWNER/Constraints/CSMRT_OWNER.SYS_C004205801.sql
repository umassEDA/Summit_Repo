ALTER TABLE CSMRT_OWNER.UM_F_STDNT_TERM_STRUCT_ADVR_MV MODIFY 
  A_STUDENT_ADVISOR_SID NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_STDNT_TERM_STRUCT_ADVR_MV MODIFY 
  A_STUDENT_ADVISOR_SID NOT NULL
  ENABLE VALIDATE
/