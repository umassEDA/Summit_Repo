ALTER TABLE CSSTG_OWNER.PS_CLASS_TBL MODIFY 
  CNCL_IF_STUD_ENRLD NULL
/

ALTER TABLE CSSTG_OWNER.PS_CLASS_TBL MODIFY 
  CNCL_IF_STUD_ENRLD NOT NULL
  ENABLE VALIDATE
/