ALTER TABLE CSSTG_OWNER.PS_LOCATION_TBL MODIFY 
  IN_CITY_LIMIT NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOCATION_TBL MODIFY 
  IN_CITY_LIMIT NOT NULL
  ENABLE VALIDATE
/
