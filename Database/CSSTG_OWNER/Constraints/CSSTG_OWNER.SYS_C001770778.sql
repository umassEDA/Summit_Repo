ALTER TABLE CSSTG_OWNER.PS_GL_INTERFACE MODIFY 
  SRC_SYS_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_GL_INTERFACE MODIFY 
  SRC_SYS_ID NOT NULL
  ENABLE VALIDATE
/