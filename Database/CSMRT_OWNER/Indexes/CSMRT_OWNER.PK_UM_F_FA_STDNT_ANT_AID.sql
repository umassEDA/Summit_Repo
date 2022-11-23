DROP INDEX CSMRT_OWNER.PK_UM_F_FA_STDNT_ANT_AID
/

--
-- PK_UM_F_FA_STDNT_ANT_AID  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_FA_STDNT_ANT_AID ON CSMRT_OWNER.UM_F_FA_STDNT_ANTICIP_AID
(INSTITUTION_CD, ACAD_CAR_CD, AID_YEAR, PERSON_ID, ITEM_TYPE, 
DISBURSEMENT_PLAN, DISBURSEMENT_ID, AS_OF_DTTM, SRC_SYS_ID)
/