ALTER TABLE CSSTG_OWNER.PS_APPOINTMENT_TBL MODIFY 
  APPT_END_TIME NULL
/

ALTER TABLE CSSTG_OWNER.PS_APPOINTMENT_TBL MODIFY 
  APPT_END_TIME NOT NULL
  ENABLE VALIDATE
/
