ALTER TABLE CSSTG_OWNER.PS_EVENT_MTG MODIFY 
  PROJECTED_ATTEND NULL
/

ALTER TABLE CSSTG_OWNER.PS_EVENT_MTG MODIFY 
  PROJECTED_ATTEND NOT NULL
  ENABLE VALIDATE
/
