DROP INDEX CSSTG_OWNER.PK_PS_SF_ACCTG_LN
/

--
-- PK_PS_SF_ACCTG_LN  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_SF_ACCTG_LN ON CSSTG_OWNER.PS_SF_ACCTG_LN
(RUN_DT, SEQNUM, SF_LINE_NBR, SRC_SYS_ID)
/
