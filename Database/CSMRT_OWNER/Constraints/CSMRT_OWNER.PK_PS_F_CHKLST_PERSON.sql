ALTER TABLE CSMRT_OWNER.PS_F_CHKLST_PERSON
  DROP CONSTRAINT PK_PS_F_CHKLST_PERSON
/

ALTER TABLE CSMRT_OWNER.PS_F_CHKLST_PERSON ADD (
  CONSTRAINT PK_PS_F_CHKLST_PERSON
  PRIMARY KEY
  (COMMON_ID, SEQ_3C, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
