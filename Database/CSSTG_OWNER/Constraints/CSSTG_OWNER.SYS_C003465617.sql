ALTER TABLE CSSTG_OWNER.PS_T_ENRL_REQ_DETAIL MODIFY 
  CLASS_NBR_CHG_TO NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_ENRL_REQ_DETAIL MODIFY 
  CLASS_NBR_CHG_TO NOT NULL
  ENABLE VALIDATE
/