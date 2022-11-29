DROP INDEX CSSTG_OWNER.PK_PS_CRSE_ATTR_TBL
/

--
-- PK_PS_CRSE_ATTR_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_CRSE_ATTR_TBL ON CSSTG_OWNER.PS_CRSE_ATTR_TBL
(CRSE_ATTR, EFFDT, SRC_SYS_ID)
/