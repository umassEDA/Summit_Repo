ALTER TABLE CSSTG_OWNER.PS_APPOINTMENT_TBL MODIFY 
  SRC_SYS_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_APPOINTMENT_TBL MODIFY 
  SRC_SYS_ID NOT NULL
  ENABLE VALIDATE
/