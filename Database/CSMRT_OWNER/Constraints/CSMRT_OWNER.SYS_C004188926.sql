ALTER TABLE CSMRT_OWNER.PS_F_TERM_ENRLMT MODIFY 
  NSLDS_LOAN_YEAR NULL
/

ALTER TABLE CSMRT_OWNER.PS_F_TERM_ENRLMT MODIFY 
  NSLDS_LOAN_YEAR NOT NULL
  ENABLE VALIDATE
/