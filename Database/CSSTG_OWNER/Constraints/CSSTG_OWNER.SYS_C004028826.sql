ALTER TABLE CSSTG_OWNER.PS_T_ISIR_REJECT_TBL MODIFY 
  REJECT_REASON NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_ISIR_REJECT_TBL MODIFY 
  REJECT_REASON NOT NULL
  ENABLE VALIDATE
/