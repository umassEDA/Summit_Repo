DROP INDEX CSSTG_OWNER.PK_UM_SF_AMH_TUITION_WVR_STG
/

--
-- PK_UM_SF_AMH_TUITION_WVR_STG  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_UM_SF_AMH_TUITION_WVR_STG ON CSSTG_OWNER.UM_SF_AMH_TUITION_WVR_STG
(INSTITUTION_CD, PERSON_ID, ITEM_TERM_LD, ITEM_TYPE, ACAD_CAREER)
/
