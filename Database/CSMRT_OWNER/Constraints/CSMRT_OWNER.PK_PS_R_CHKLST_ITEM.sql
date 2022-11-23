ALTER TABLE CSMRT_OWNER.PS_R_CHKLST_ITEM
  DROP CONSTRAINT PK_PS_R_CHKLST_ITEM
/

ALTER TABLE CSMRT_OWNER.PS_R_CHKLST_ITEM ADD (
  CONSTRAINT PK_PS_R_CHKLST_ITEM
  PRIMARY KEY
  (COMMON_ID, SEQ_3C, CHECKLIST_SEQ, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/