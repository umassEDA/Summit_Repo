ALTER TABLE CSMRT_OWNER.PS_F_TERM_ENRLMT MODIFY 
  FA_ELIG_FLG NULL
/

ALTER TABLE CSMRT_OWNER.PS_F_TERM_ENRLMT MODIFY 
  FA_ELIG_FLG NOT NULL
  ENABLE VALIDATE
/