DROP INDEX CSSTG_OWNER.PK_PS_ACAD_LEVEL_TBL
/

--
-- PK_PS_ACAD_LEVEL_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ACAD_LEVEL_TBL ON CSSTG_OWNER.PS_ACAD_LEVEL_TBL
(SETID, LEVEL_LOAD_RULE, EFFDT, UNT_CUM_TOTAL, ACADEMIC_LEVEL, 
SRC_SYS_ID)
/
