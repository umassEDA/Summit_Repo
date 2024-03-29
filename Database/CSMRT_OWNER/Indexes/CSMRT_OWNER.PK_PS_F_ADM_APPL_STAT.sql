DROP INDEX CSMRT_OWNER.PK_PS_F_ADM_APPL_STAT
/

--
-- PK_PS_F_ADM_APPL_STAT  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_PS_F_ADM_APPL_STAT ON CSMRT_OWNER.PS_F_ADM_APPL_STAT
(ACAD_CAR_CD, STU_CAR_NBR, PERSON_ID, ADM_APPL_NBR, APPL_PROG_NBR, 
ACAD_PLAN_CD, ACAD_SPLAN_CD, EFFDT, EFFSEQ, SRC_SYS_ID)
/
