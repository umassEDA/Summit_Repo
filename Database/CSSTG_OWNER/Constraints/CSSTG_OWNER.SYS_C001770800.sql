ALTER TABLE CSSTG_OWNER.PS_GL_INTERFACE MODIFY 
  DEFERRED_LEDGER NULL
/

ALTER TABLE CSSTG_OWNER.PS_GL_INTERFACE MODIFY 
  DEFERRED_LEDGER NOT NULL
  ENABLE VALIDATE
/