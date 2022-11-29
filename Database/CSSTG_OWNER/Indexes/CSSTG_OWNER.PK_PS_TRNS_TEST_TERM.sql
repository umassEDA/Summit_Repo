DROP INDEX CSSTG_OWNER.PK_PS_TRNS_TEST_TERM
/

--
-- PK_PS_TRNS_TEST_TERM  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_TRNS_TEST_TERM ON CSSTG_OWNER.PS_TRNS_TEST_TERM
(EMPLID, ACAD_CAREER, INSTITUTION, MODEL_NBR, ARTICULATION_TERM, 
SRC_SYS_ID)
/