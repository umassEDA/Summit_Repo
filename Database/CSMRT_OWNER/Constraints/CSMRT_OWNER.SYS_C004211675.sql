ALTER TABLE CSMRT_OWNER.UM_D_CLASS MODIFY 
  DYN_DT_CALC_REQ_FLG NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_CLASS MODIFY 
  DYN_DT_CALC_REQ_FLG NOT NULL
  ENABLE VALIDATE
/
