ALTER TABLE CSMRT_OWNER.PS_D_DAY MODIFY 
  FIRSTDAYQTR_FLG NULL
/

ALTER TABLE CSMRT_OWNER.PS_D_DAY MODIFY 
  FIRSTDAYQTR_FLG NOT NULL
  ENABLE VALIDATE
/