ALTER TABLE CSMRT_OWNER.PS_D_DAY MODIFY 
  LASTDAYWK_FLG NULL
/

ALTER TABLE CSMRT_OWNER.PS_D_DAY MODIFY 
  LASTDAYWK_FLG NOT NULL
  ENABLE VALIDATE
/
