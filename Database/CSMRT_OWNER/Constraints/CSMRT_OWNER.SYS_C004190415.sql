ALTER TABLE CSMRT_OWNER.PS_D_EVAL_STATUS MODIFY 
  EVAL_STAT_SID NULL
/

ALTER TABLE CSMRT_OWNER.PS_D_EVAL_STATUS MODIFY 
  EVAL_STAT_SID NOT NULL
  ENABLE VALIDATE
/