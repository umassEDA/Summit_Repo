DROP INDEX CSSTG_OWNER.PK_PSXLATITEM
/

--
-- PK_PSXLATITEM  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PSXLATITEM ON CSSTG_OWNER.PSXLATITEM
(FIELDNAME, FIELDVALUE, EFFDT, SRC_SYS_ID)
/