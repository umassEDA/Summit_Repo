ALTER TABLE CSMRT_OWNER.UM_D_GRD_RSTR_TYPE MODIFY 
  OVRD_GRADE_ROSTER_FLG NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_GRD_RSTR_TYPE MODIFY 
  OVRD_GRADE_ROSTER_FLG NOT NULL
  ENABLE VALIDATE
/
