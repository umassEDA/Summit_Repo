DROP INDEX CSSTG_OWNER.PK_PS_ISIR_COMPUTED
/

--
-- PK_PS_ISIR_COMPUTED  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ISIR_COMPUTED ON CSSTG_OWNER.PS_ISIR_COMPUTED
(EMPLID, INSTITUTION, AID_YEAR, EFFDT, EFFSEQ, 
TABLE_ID, SRC_SYS_ID)
/