ALTER TABLE CSSTG_OWNER.PS_DISB_ID_TBL MODIFY 
  DISBURSEMENT_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_DISB_ID_TBL MODIFY 
  DISBURSEMENT_ID NOT NULL
  ENABLE VALIDATE
/