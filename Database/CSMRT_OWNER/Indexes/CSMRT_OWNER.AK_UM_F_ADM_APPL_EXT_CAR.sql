DROP INDEX CSMRT_OWNER.AK_UM_F_ADM_APPL_EXT_CAR
/

--
-- AK_UM_F_ADM_APPL_EXT_CAR  (Index) 
--
CREATE BITMAP INDEX CSMRT_OWNER.AK_UM_F_ADM_APPL_EXT_CAR ON CSMRT_OWNER.UM_F_ADM_APPL_EXT_DEG
(EXT_ACAD_CAR_SID)
/