ALTER TABLE CSSTG_OWNER.PS_T_TRNS_CRSE_SCH MODIFY 
  TRNSFR_SRC_TYPE NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_TRNS_CRSE_SCH MODIFY 
  TRNSFR_SRC_TYPE NOT NULL
  ENABLE VALIDATE
/
