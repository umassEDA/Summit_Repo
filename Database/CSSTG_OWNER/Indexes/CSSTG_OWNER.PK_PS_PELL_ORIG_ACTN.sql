DROP INDEX CSSTG_OWNER.PK_PS_PELL_ORIG_ACTN
/

--
-- PK_PS_PELL_ORIG_ACTN  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_PELL_ORIG_ACTN ON CSSTG_OWNER.PS_PELL_ORIG_ACTN
(EMPLID, INSTITUTION, AID_YEAR, PELL_ORIG_ID, PELL_ORIG_ACTN_SEQ, 
SRC_SYS_ID)
/
