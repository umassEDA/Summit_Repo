DROP INDEX CSSTG_OWNER.PK_PS_S_PSXLATITEM
/

--
-- PK_PS_S_PSXLATITEM  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_S_PSXLATITEM ON CSSTG_OWNER.PS_S_PSXLATITEM_OLD
(FIELDNAME, FIELDVALUE, EFFDT, SRC_SYS_ID)
/
