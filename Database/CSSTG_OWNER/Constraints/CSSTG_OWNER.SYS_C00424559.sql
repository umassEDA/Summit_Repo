ALTER TABLE CSSTG_OWNER.PS_S_RT_RATE_DEF_OLD MODIFY 
  MAX_VARIANCE NULL
/

ALTER TABLE CSSTG_OWNER.PS_S_RT_RATE_DEF_OLD MODIFY 
  MAX_VARIANCE NOT NULL
  ENABLE VALIDATE
/