ALTER TABLE CSSTG_OWNER.PS_GL_INTERFACE MODIFY 
  DEFERRED_ACCOUNT NULL
/

ALTER TABLE CSSTG_OWNER.PS_GL_INTERFACE MODIFY 
  DEFERRED_ACCOUNT NOT NULL
  ENABLE VALIDATE
/
