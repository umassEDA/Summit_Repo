ALTER TABLE CSMRT_OWNER.UM_D_CLASS_INSTRCTR
  DROP CONSTRAINT PK_UM_D_CLASS_INSTRCTR
/

ALTER TABLE CSMRT_OWNER.UM_D_CLASS_INSTRCTR ADD (
  CONSTRAINT PK_UM_D_CLASS_INSTRCTR
  PRIMARY KEY
  (CLASS_INSTRCTR_SID)
  RELY
  ENABLE VALIDATE)
/
