ALTER TABLE CSSTG_OWNER.PS_TRNS_TEST_MODEL MODIFY 
  TRF_TAKEN_NOGPA NULL
/

ALTER TABLE CSSTG_OWNER.PS_TRNS_TEST_MODEL MODIFY 
  TRF_TAKEN_NOGPA NOT NULL
  ENABLE VALIDATE
/
