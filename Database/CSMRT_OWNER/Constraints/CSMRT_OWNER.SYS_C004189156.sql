ALTER TABLE CSMRT_OWNER.PS_F_TERM_ENRLMT MODIFY 
  CUR_RESIDENT_TERMS NULL
/

ALTER TABLE CSMRT_OWNER.PS_F_TERM_ENRLMT MODIFY 
  CUR_RESIDENT_TERMS NOT NULL
  ENABLE VALIDATE
/