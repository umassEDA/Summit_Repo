DROP INDEX CSMRT_OWNER.AK_UM_F_STDNT_ADM17
/

--
-- AK_UM_F_STDNT_ADM17  (Index) 
--
CREATE BITMAP INDEX CSMRT_OWNER.AK_UM_F_STDNT_ADM17 ON CSMRT_OWNER.UM_F_STDNT_ADM
(ADMIT_TYPE_SID)
/