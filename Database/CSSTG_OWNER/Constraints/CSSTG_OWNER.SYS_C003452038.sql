ALTER TABLE CSSTG_OWNER.PS_T_STDNT_FA_TERM MODIFY 
  OVRD_CENSUSDT_LOCK NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_STDNT_FA_TERM MODIFY 
  OVRD_CENSUSDT_LOCK NOT NULL
  ENABLE VALIDATE
/