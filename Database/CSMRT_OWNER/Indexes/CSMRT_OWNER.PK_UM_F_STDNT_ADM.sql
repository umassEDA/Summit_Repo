DROP INDEX CSMRT_OWNER.PK_UM_F_STDNT_ADM
/

--
-- PK_UM_F_STDNT_ADM  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_STDNT_ADM ON CSMRT_OWNER.UM_F_STDNT_ADM
(PERSON_SID, INSTITUTION_SID, ACAD_CAR_SID, STU_CAR_NBR, STU_CAR_NBR_SR, 
ADM_APPL_NBR, APPL_PROG_NBR, SR_ACAD_PROG_SID, SR_ACAD_PLAN_SID, SR_ACAD_SPLAN_SID, 
ADM_ACAD_PROG_SID, ADM_ACAD_PLAN_SID, ADM_ACAD_SPLAN_SID, SRC_SYS_ID)
/