ALTER TABLE CSMRT_OWNER.UM_D_CLASS MODIFY 
  FEES_EXIST_FLG NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_CLASS MODIFY 
  FEES_EXIST_FLG NOT NULL
  ENABLE VALIDATE
/
