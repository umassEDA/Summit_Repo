ALTER TABLE CSMRT_OWNER.UM_D_CLASS_ATTR_VAL
  DROP CONSTRAINT PK_UM_D_CLASS_ATTR_VAL
/

ALTER TABLE CSMRT_OWNER.UM_D_CLASS_ATTR_VAL ADD (
  CONSTRAINT PK_UM_D_CLASS_ATTR_VAL
  PRIMARY KEY
  (CLASS_ATTR_VAL_SID)
  RELY
  ENABLE VALIDATE)
/
