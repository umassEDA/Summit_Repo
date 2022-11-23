DROP INDEX CSMRT_OWNER.PK_UM_F_FA_STDNT_AID_ADM
/

--
-- PK_UM_F_FA_STDNT_AID_ADM  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_FA_STDNT_AID_ADM ON CSMRT_OWNER.UM_F_FA_STDNT_AID_ADM
(INSTITUTION_SID, PERSON_SID, ACAD_CAR_SID, STU_CAR_NBR, ADM_APPL_NBR, 
APPL_PROG_NBR, ACAD_PROG_SID, ACAD_PLAN_SID, ACAD_SPLAN_SID, SRC_SYS_ID, 
ADMIT_TERM_SID, EFFDT, EFFSEQ)
/