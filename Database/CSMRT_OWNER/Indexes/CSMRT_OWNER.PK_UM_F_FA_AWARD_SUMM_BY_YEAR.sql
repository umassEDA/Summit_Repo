DROP INDEX CSMRT_OWNER.PK_UM_F_FA_AWARD_SUMM_BY_YEAR
/

--
-- PK_UM_F_FA_AWARD_SUMM_BY_YEAR  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_FA_AWARD_SUMM_BY_YEAR ON CSMRT_OWNER.UM_F_FA_AWARD_SUMM_BY_YEAR
(INSTITUTION_CD, PERSON_ID, AID_YEAR, ACAD_CAR_CD, SRC_SYS_ID)
/
