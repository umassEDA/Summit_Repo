DROP INDEX CSSTG_OWNER.PK_PS_CRSE_ATTR_VALUE
/

--
-- PK_PS_CRSE_ATTR_VALUE  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_CRSE_ATTR_VALUE ON CSSTG_OWNER.PS_CRSE_ATTR_VALUE
(CRSE_ATTR, EFFDT, CRSE_ATTR_VALUE, SRC_SYS_ID)
/
