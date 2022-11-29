DROP INDEX CSSTG_OWNER.PK_PS_PELL_ORIG_DTL
/

--
-- PK_PS_PELL_ORIG_DTL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_PELL_ORIG_DTL ON CSSTG_OWNER.PS_PELL_ORIG_DTL
(EMPLID, INSTITUTION, AID_YEAR, PELL_ORIG_ID, PELL_ORIG_SEQ_NBR, 
SRC_SYS_ID)
/