ALTER TABLE CSSTG_OWNER.PS_DEPT_TBL MODIFY 
  TAX_LOCATION_CD NULL
/

ALTER TABLE CSSTG_OWNER.PS_DEPT_TBL MODIFY 
  TAX_LOCATION_CD NOT NULL
  ENABLE VALIDATE
/