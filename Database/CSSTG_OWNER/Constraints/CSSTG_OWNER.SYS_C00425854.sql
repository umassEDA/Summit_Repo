ALTER TABLE CSSTG_OWNER.PS_APPOINTMENT_TBL MODIFY 
  SSR_APPT_STD_ASGN NULL
/

ALTER TABLE CSSTG_OWNER.PS_APPOINTMENT_TBL MODIFY 
  SSR_APPT_STD_ASGN NOT NULL
  ENABLE VALIDATE
/
