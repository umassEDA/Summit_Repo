ALTER TABLE CSSTG_OWNER.PS_S_RT_RATE_TBL_OLD MODIFY 
  RATE_MULT NULL
/

ALTER TABLE CSSTG_OWNER.PS_S_RT_RATE_TBL_OLD MODIFY 
  RATE_MULT NOT NULL
  ENABLE VALIDATE
/
