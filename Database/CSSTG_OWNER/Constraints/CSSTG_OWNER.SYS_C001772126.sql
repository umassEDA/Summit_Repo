ALTER TABLE CSSTG_OWNER.PS_STDNT_AGGR_SCHL MODIFY 
  AGGREGATE_STATUS NULL
/

ALTER TABLE CSSTG_OWNER.PS_STDNT_AGGR_SCHL MODIFY 
  AGGREGATE_STATUS NOT NULL
  ENABLE VALIDATE
/