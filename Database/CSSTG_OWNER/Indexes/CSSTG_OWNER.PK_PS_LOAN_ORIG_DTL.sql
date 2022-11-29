DROP INDEX CSSTG_OWNER.PK_PS_LOAN_ORIG_DTL
/

--
-- PK_PS_LOAN_ORIG_DTL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_LOAN_ORIG_DTL ON CSSTG_OWNER.PS_LOAN_ORIG_DTL
(EMPLID, INSTITUTION, AID_YEAR, ACAD_CAREER, LOAN_TYPE, 
LN_APPL_SEQ, ITEM_TYPE, SRC_SYS_ID)
/