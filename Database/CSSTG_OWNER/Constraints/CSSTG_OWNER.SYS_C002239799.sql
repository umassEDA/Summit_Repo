ALTER TABLE CSSTG_OWNER.PS_GRADE_ROSTER MODIFY 
  GRADING_SCHEME NULL
/

ALTER TABLE CSSTG_OWNER.PS_GRADE_ROSTER MODIFY 
  GRADING_SCHEME NOT NULL
  ENABLE VALIDATE
/
