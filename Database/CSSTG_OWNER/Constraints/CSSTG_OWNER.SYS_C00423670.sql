ALTER TABLE CSSTG_OWNER.PS_ADDRESSES MODIFY 
  GEO_CODE NULL
/

ALTER TABLE CSSTG_OWNER.PS_ADDRESSES MODIFY 
  GEO_CODE NOT NULL
  ENABLE VALIDATE
/