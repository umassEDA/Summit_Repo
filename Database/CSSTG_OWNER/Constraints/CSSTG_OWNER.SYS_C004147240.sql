ALTER TABLE CSSTG_OWNER.PS_T_VISA_PERMIT_TBL MODIFY 
  VISA_PERMIT_CLASS NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_VISA_PERMIT_TBL MODIFY 
  VISA_PERMIT_CLASS NOT NULL
  ENABLE VALIDATE
/