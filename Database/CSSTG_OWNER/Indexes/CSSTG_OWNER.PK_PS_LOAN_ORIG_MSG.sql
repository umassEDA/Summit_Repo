DROP INDEX CSSTG_OWNER.PK_PS_LOAN_ORIG_MSG
/

--
-- PK_PS_LOAN_ORIG_MSG  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_LOAN_ORIG_MSG ON CSSTG_OWNER.PS_LOAN_ORIG_MSG
(EMPLID, INSTITUTION, AID_YEAR, ACAD_CAREER, LOAN_TYPE, 
LN_APPL_SEQ, ITEM_TYPE, LN_ORIG_ACTN_SEQ, LNORIG_MSG_SEQ, SRC_SYS_ID)
/
