ALTER TABLE CSSTG_OWNER.PS_LOCATION_TBL MODIFY 
  TARIFF_AREA_GER NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOCATION_TBL MODIFY 
  TARIFF_AREA_GER NOT NULL
  ENABLE VALIDATE
/
