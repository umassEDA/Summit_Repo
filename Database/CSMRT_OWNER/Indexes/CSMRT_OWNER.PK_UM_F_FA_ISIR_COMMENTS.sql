DROP INDEX CSMRT_OWNER.PK_UM_F_FA_ISIR_COMMENTS
/

--
-- PK_UM_F_FA_ISIR_COMMENTS  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_FA_ISIR_COMMENTS ON CSMRT_OWNER.UM_F_FA_ISIR_COMMENTS
(INSTITUTION_CD, PERSON_ID, AID_YEAR, COMMENT_CODE, SRC_SYS_ID)
/
