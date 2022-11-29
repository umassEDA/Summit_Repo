DROP INDEX CSSTG_OWNER.PK_PS_ORG_LOCATION
/

--
-- PK_PS_ORG_LOCATION  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ORG_LOCATION ON CSSTG_OWNER.PS_ORG_LOCATION
(EXT_ORG_ID, ORG_LOCATION, EFFDT, SRC_SYS_ID)
/