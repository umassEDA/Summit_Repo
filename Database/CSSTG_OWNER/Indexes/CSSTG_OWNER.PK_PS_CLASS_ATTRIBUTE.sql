DROP INDEX CSSTG_OWNER.PK_PS_CLASS_ATTRIBUTE
/

--
-- PK_PS_CLASS_ATTRIBUTE  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_CLASS_ATTRIBUTE ON CSSTG_OWNER.PS_CLASS_ATTRIBUTE
(CRSE_ID, CRSE_OFFER_NBR, STRM, SESSION_CODE, CLASS_SECTION, 
CRSE_ATTR, CRSE_ATTR_VALUE, SRC_SYS_ID)
/
