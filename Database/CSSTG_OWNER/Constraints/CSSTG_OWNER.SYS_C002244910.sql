ALTER TABLE CSSTG_OWNER.PS_T_GRADE_ROSTER MODIFY 
  CRSE_GRADE_INPUT NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_GRADE_ROSTER MODIFY 
  CRSE_GRADE_INPUT NOT NULL
  ENABLE VALIDATE
/