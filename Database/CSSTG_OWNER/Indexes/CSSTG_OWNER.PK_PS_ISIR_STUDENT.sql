DROP INDEX CSSTG_OWNER.PK_PS_ISIR_STUDENT
/

--
-- PK_PS_ISIR_STUDENT  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ISIR_STUDENT ON CSSTG_OWNER.PS_ISIR_STUDENT
(EMPLID, INSTITUTION, AID_YEAR, EFFDT, EFFSEQ, 
TABLE_ID, SRC_SYS_ID)
/
