DROP INDEX CSSTG_OWNER.PK_PS_TRNS_TEST_MODEL
/

--
-- PK_PS_TRNS_TEST_MODEL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_TRNS_TEST_MODEL ON CSSTG_OWNER.PS_TRNS_TEST_MODEL
(EMPLID, ACAD_CAREER, INSTITUTION, MODEL_NBR, SRC_SYS_ID)
/
