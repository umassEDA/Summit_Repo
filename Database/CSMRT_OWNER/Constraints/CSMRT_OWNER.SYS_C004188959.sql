ALTER TABLE CSMRT_OWNER.PS_F_TERM_ENRLMT MODIFY 
  OVRD_INIT_ENR_FEE_FLG NULL
/

ALTER TABLE CSMRT_OWNER.PS_F_TERM_ENRLMT MODIFY 
  OVRD_INIT_ENR_FEE_FLG NOT NULL
  ENABLE VALIDATE
/
