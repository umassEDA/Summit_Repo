ALTER TABLE CSMRT_OWNER.PS_F_TERM_ENRLMT MODIFY 
  RESET_CUM_STATS_FLG NULL
/

ALTER TABLE CSMRT_OWNER.PS_F_TERM_ENRLMT MODIFY 
  RESET_CUM_STATS_FLG NOT NULL
  ENABLE VALIDATE
/