DROP INDEX CSSTG_OWNER.PK_PS_NAME_SUFFIX_TBL
/

--
-- PK_PS_NAME_SUFFIX_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_NAME_SUFFIX_TBL ON CSSTG_OWNER.PS_NAME_SUFFIX_TBL
(NAME_SUFFIX, SRC_SYS_ID)
/
