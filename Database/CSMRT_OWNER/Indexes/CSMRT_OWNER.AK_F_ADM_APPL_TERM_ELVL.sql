DROP INDEX CSMRT_OWNER.AK_F_ADM_APPL_TERM_ELVL
/

--
-- AK_F_ADM_APPL_TERM_ELVL  (Index) 
--
CREATE BITMAP INDEX CSMRT_OWNER.AK_F_ADM_APPL_TERM_ELVL ON CSMRT_OWNER.UM_F_ADM_APPL_TERM
(END_ACAD_LVL_SID)
/