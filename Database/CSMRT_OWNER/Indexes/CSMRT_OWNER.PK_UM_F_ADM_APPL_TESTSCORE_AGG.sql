DROP INDEX CSMRT_OWNER.PK_UM_F_ADM_APPL_TESTSCORE_AGG
/

--
-- PK_UM_F_ADM_APPL_TESTSCORE_AGG  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_ADM_APPL_TESTSCORE_AGG ON CSMRT_OWNER.UM_F_ADM_APPL_TESTSCORE_AGG
(PERSON_ID, ACAD_CAR_CD, STU_CAR_NBR, ADM_APPL_NBR, SRC_SYS_ID)
/
