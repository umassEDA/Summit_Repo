DROP INDEX CSMRT_OWNER.PK_UM_F_FA_ISIR_AUDIT
/

--
-- PK_UM_F_FA_ISIR_AUDIT  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_FA_ISIR_AUDIT ON CSMRT_OWNER.UM_F_FA_ISIR_AUDIT
(PERSON_ID, INSTITUTION_CD, AID_YEAR, DTTM_STAMP, ISIR_FIELD_NUM, 
SRC_SYS_ID)
/