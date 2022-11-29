DROP INDEX CSSTG_OWNER.PK_PS_ISIR_REJECT_TBL
/

--
-- PK_PS_ISIR_REJECT_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ISIR_REJECT_TBL ON CSSTG_OWNER.PS_ISIR_REJECT_TBL
(AID_YEAR, REJECT_REASON, SRC_SYS_ID)
/