DROP INDEX CSMRT_OWNER.PK_UM_F_FA_STDNT_AWRD_ACTV
/

--
-- PK_UM_F_FA_STDNT_AWRD_ACTV  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_FA_STDNT_AWRD_ACTV ON CSMRT_OWNER.UM_F_FA_STDNT_AWRD_ACTV
(INSTITUTION_CD, AID_YEAR, PERSON_ID, ITEM_TYPE, ACAD_CAR_CD, 
ACTION_DTTM, SRC_SYS_ID)
/
