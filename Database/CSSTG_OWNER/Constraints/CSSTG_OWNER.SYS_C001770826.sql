ALTER TABLE CSSTG_OWNER.PS_GL_INTERFACE MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSSTG_OWNER.PS_GL_INTERFACE MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/
