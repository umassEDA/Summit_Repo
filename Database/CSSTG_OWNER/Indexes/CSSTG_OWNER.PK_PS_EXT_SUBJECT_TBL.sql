DROP INDEX CSSTG_OWNER.PK_PS_EXT_SUBJECT_TBL
/

--
-- PK_PS_EXT_SUBJECT_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_EXT_SUBJECT_TBL ON CSSTG_OWNER.PS_EXT_SUBJECT_TBL
(EXT_SUBJECT_AREA, EFFDT, SRC_SYS_ID)
/
