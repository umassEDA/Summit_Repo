ALTER TABLE CSMRT_OWNER.UM_F_STDNT_GRADE_RSTR MODIFY 
  GRADE_ROSTER_STAT_LD NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_STDNT_GRADE_RSTR MODIFY 
  GRADE_ROSTER_STAT_LD NOT NULL
  ENABLE VALIDATE
/
