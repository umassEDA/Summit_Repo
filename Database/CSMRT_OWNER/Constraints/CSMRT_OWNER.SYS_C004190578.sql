ALTER TABLE CSMRT_OWNER.UM_F_STDNT_GRADE_RSTR MODIFY 
  TSCRPT_NOTE_EXISTS NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_STDNT_GRADE_RSTR MODIFY 
  TSCRPT_NOTE_EXISTS NOT NULL
  ENABLE VALIDATE
/
