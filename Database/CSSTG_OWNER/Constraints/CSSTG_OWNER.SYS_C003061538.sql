ALTER TABLE CSSTG_OWNER.PS_AGGR_LIMIT_TBL MODIFY 
  GRAD_LIMIT_RULE NULL
/

ALTER TABLE CSSTG_OWNER.PS_AGGR_LIMIT_TBL MODIFY 
  GRAD_LIMIT_RULE NOT NULL
  ENABLE VALIDATE
/