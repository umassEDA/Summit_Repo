DROP INDEX CSSTG_OWNER.PK_PS_LOAN_ORIG_ACTN
/

--
-- PK_PS_LOAN_ORIG_ACTN  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_LOAN_ORIG_ACTN ON CSSTG_OWNER.PS_LOAN_ORIG_ACTN
(EMPLID, INSTITUTION, AID_YEAR, ACAD_CAREER, LOAN_TYPE, 
LN_APPL_SEQ, ITEM_TYPE, LN_ORIG_ACTN_SEQ, SRC_SYS_ID)
/