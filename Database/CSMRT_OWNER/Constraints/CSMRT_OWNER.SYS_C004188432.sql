ALTER TABLE CSMRT_OWNER.PS_D_INSTRCTR_ROLE MODIFY 
  INSTRCTR_ROLE_SD NULL
/

ALTER TABLE CSMRT_OWNER.PS_D_INSTRCTR_ROLE MODIFY 
  INSTRCTR_ROLE_SD NOT NULL
  ENABLE VALIDATE
/
