ALTER TABLE CSSTG_OWNER.PS_T_TRNS_TEST_DTL MODIFY 
  TRNSFR_EQVLNCY_GRP NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_TRNS_TEST_DTL MODIFY 
  TRNSFR_EQVLNCY_GRP NOT NULL
  ENABLE VALIDATE
/
