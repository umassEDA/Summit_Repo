DROP INDEX CSMRT_OWNER.AK_F_ADM_APPL_CLS_ENRL_RPT
/

--
-- AK_F_ADM_APPL_CLS_ENRL_RPT  (Index) 
--
CREATE BITMAP INDEX CSMRT_OWNER.AK_F_ADM_APPL_CLS_ENRL_RPT ON CSMRT_OWNER.UM_F_ADM_APPL_CLASS_ENRLMT
(REPEAT_SID)
/