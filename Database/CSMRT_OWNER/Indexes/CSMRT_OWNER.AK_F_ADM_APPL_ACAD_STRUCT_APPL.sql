DROP INDEX CSMRT_OWNER.AK_F_ADM_APPL_ACAD_STRUCT_APPL
/

--
-- AK_F_ADM_APPL_ACAD_STRUCT_APPL  (Index) 
--
CREATE BITMAP INDEX CSMRT_OWNER.AK_F_ADM_APPL_ACAD_STRUCT_APPL ON CSMRT_OWNER.UM_F_ADM_APPL_ACAD_STRUCT
(ADM_APPL_SID)
/