DROP INDEX CSSTG_OWNER.PK_PS_SEL_VALUE_TBL
/

--
-- PK_PS_SEL_VALUE_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_SEL_VALUE_TBL ON CSSTG_OWNER.PS_SEL_VALUE_TBL
(BUSINESS_UNIT, CRITERIA, EFFDT, SEQNO, SELECT_VALUE, 
SRC_SYS_ID)
/
