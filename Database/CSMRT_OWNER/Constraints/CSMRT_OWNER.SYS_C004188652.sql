ALTER TABLE CSMRT_OWNER.PS_D_INSTITUTION MODIFY 
  INSTITUTION_FD NULL
/

ALTER TABLE CSMRT_OWNER.PS_D_INSTITUTION MODIFY 
  INSTITUTION_FD NOT NULL
  ENABLE VALIDATE
/
