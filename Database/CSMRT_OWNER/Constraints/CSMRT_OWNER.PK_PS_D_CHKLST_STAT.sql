ALTER TABLE CSMRT_OWNER.PS_D_CHKLST_STAT
  DROP CONSTRAINT PK_PS_D_CHKLST_STAT
/

ALTER TABLE CSMRT_OWNER.PS_D_CHKLST_STAT ADD (
  CONSTRAINT PK_PS_D_CHKLST_STAT
  PRIMARY KEY
  (CHKLIST_STAT_SID)
  RELY
  DISABLE NOVALIDATE)
/