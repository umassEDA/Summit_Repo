DROP INDEX CSMRT_OWNER.AK_UM_F_FA_STDNT_AID_CHK20
/

--
-- AK_UM_F_FA_STDNT_AID_CHK20  (Index) 
--
CREATE BITMAP INDEX CSMRT_OWNER.AK_UM_F_FA_STDNT_AID_CHK20 ON CSMRT_OWNER.UM_F_FA_STDNT_AID_CHK
(VAR_DATA_SID)
/