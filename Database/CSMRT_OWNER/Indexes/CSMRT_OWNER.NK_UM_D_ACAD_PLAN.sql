DROP INDEX CSMRT_OWNER.NK_UM_D_ACAD_PLAN
/

--
-- NK_UM_D_ACAD_PLAN  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_UM_D_ACAD_PLAN ON CSMRT_OWNER.UM_D_ACAD_PLAN
(INSTITUTION_CD, ACAD_PLAN_CD, EFFDT, SRC_SYS_ID)
/
