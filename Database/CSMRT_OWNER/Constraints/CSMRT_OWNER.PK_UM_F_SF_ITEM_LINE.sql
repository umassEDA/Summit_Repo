ALTER TABLE CSMRT_OWNER.UM_F_SF_ITEM_LINE
  DROP CONSTRAINT PK_UM_F_SF_ITEM_LINE
/

ALTER TABLE CSMRT_OWNER.UM_F_SF_ITEM_LINE ADD (
  CONSTRAINT PK_UM_F_SF_ITEM_LINE
  PRIMARY KEY
  (INSTITUTION_CD, PERSON_ID, SA_ID_TYPE, ITEM_NBR, LINE_SEQ_NBR, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
