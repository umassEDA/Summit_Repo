DROP INDEX CSMRT_OWNER.PK_UM_F_EXT_TESTSCORE_AGG
/

--
-- PK_UM_F_EXT_TESTSCORE_AGG  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_EXT_TESTSCORE_AGG ON CSMRT_OWNER.UM_F_EXT_TESTSCORE_AGG
(PERSON_SID, SRC_SYS_ID)
/
