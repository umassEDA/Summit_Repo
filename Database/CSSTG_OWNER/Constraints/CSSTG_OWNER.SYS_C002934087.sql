ALTER TABLE CSSTG_OWNER.PS_COMMUNICATION MODIFY 
  EXT_ORG_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_COMMUNICATION MODIFY 
  EXT_ORG_ID NOT NULL
  ENABLE VALIDATE
/