ALTER TABLE CSSTG_OWNER.PS_TSCRPT_NOTE_TBL MODIFY 
  TSCRPT_NOTE_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_TSCRPT_NOTE_TBL MODIFY 
  TSCRPT_NOTE_ID NOT NULL
  ENABLE VALIDATE
/