ALTER TABLE CSSTG_OWNER.PS_ISIR_REJ_REASON MODIFY 
  REJECT_REASON NULL
/

ALTER TABLE CSSTG_OWNER.PS_ISIR_REJ_REASON MODIFY 
  REJECT_REASON NOT NULL
  ENABLE VALIDATE
/