ALTER TABLE CSMRT_OWNER.PS_D_DAY MODIFY 
  LASTDAYQTR_FLG NULL
/

ALTER TABLE CSMRT_OWNER.PS_D_DAY MODIFY 
  LASTDAYQTR_FLG NOT NULL
  ENABLE VALIDATE
/
