ALTER TABLE CSSTG_OWNER.PS_TRNS_CRSE_SCH MODIFY 
  TRF_TAKEN_GPA NULL
/

ALTER TABLE CSSTG_OWNER.PS_TRNS_CRSE_SCH MODIFY 
  TRF_TAKEN_GPA NOT NULL
  ENABLE VALIDATE
/