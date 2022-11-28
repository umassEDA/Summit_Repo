DROP INDEX CSSTG_OWNER.PK_PS_ISIR_00_1_EC
/

--
-- PK_PS_ISIR_00_1_EC  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ISIR_00_1_EC ON CSSTG_OWNER.PS_ISIR_00_1_EC
(ECTRANSID, ECQUEUEINSTANCE, ECTRANSINOUTSW, ISIR_SEQ_NO, SRC_SYS_ID)
/
