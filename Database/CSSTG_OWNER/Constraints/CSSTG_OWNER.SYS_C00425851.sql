ALTER TABLE CSSTG_OWNER.PS_APPOINTMENT_TBL MODIFY 
  APPT_END_DATE NULL
/

ALTER TABLE CSSTG_OWNER.PS_APPOINTMENT_TBL MODIFY 
  APPT_END_DATE NOT NULL
  ENABLE VALIDATE
/
