ALTER TABLE CSSTG_OWNER.PS_T_TRNS_CRSE_DTL MODIFY 
  TRNSFR_STAT NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_TRNS_CRSE_DTL MODIFY 
  TRNSFR_STAT NOT NULL
  ENABLE VALIDATE
/