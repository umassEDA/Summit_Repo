DROP INDEX CSSTG_OWNER.PK_PS_S_PROGRAM_TBL
/

--
-- PK_PS_S_PROGRAM_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_S_PROGRAM_TBL ON CSSTG_OWNER.PS_S_PROGRAM_TBL_OLD
(SETID, PROGRAM_CODE, EFFDT, SRC_SYS_ID)
/
