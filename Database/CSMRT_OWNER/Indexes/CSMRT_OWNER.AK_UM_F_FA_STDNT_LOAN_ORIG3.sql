DROP INDEX CSMRT_OWNER.AK_UM_F_FA_STDNT_LOAN_ORIG3
/

--
-- AK_UM_F_FA_STDNT_LOAN_ORIG3  (Index) 
--
CREATE BITMAP INDEX CSMRT_OWNER.AK_UM_F_FA_STDNT_LOAN_ORIG3 ON CSMRT_OWNER.UM_F_FA_STDNT_LOAN_ORIG
(INSTITUTION_SID)
/