DROP INDEX CSSTG_OWNER.PK_PS_SEL_CRITER_TBL
/

--
-- PK_PS_SEL_CRITER_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_SEL_CRITER_TBL ON CSSTG_OWNER.PS_SEL_CRITER_TBL
(BUSINESS_UNIT, CRITERIA, EFFDT, SEQNO, SRC_SYS_ID)
/
