ALTER TABLE CSSTG_OWNER.PS_AGING_TBL_SF_OLD MODIFY 
  AGING_SET NULL
/

ALTER TABLE CSSTG_OWNER.PS_AGING_TBL_SF_OLD MODIFY 
  AGING_SET NOT NULL
  ENABLE VALIDATE
/