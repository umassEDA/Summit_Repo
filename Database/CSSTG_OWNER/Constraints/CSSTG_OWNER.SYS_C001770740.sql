ALTER TABLE CSSTG_OWNER.PS_DISB_PLAN_TBL MODIFY 
  DISBURSEMENT_PLAN NULL
/

ALTER TABLE CSSTG_OWNER.PS_DISB_PLAN_TBL MODIFY 
  DISBURSEMENT_PLAN NOT NULL
  ENABLE VALIDATE
/
