DROP INDEX CSMRT_OWNER.PK_PS_F_DEGREES
/

--
-- PK_PS_F_DEGREES  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_PS_F_DEGREES ON CSMRT_OWNER.PS_F_DEGREES
(PERSON_ID, DEGREE_NBR, ACAD_PLAN_CD, ACAD_SPLAN_CD, SRC_SYS_ID)
/