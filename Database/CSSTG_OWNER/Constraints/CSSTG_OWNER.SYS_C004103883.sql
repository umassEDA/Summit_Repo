ALTER TABLE CSSTG_OWNER.PS_CLASS_TBL MODIFY 
  WAITLIST_DAEMON NULL
/

ALTER TABLE CSSTG_OWNER.PS_CLASS_TBL MODIFY 
  WAITLIST_DAEMON NOT NULL
  ENABLE VALIDATE
/