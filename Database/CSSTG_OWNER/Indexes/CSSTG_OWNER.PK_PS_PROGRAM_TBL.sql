DROP INDEX CSSTG_OWNER.PK_PS_PROGRAM_TBL
/

--
-- PK_PS_PROGRAM_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_PROGRAM_TBL ON CSSTG_OWNER.PS_PROGRAM_TBL
(SETID, PROGRAM_CODE, EFFDT, SRC_SYS_ID)
/
