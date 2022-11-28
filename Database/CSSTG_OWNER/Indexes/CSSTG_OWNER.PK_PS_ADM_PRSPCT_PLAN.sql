DROP INDEX CSSTG_OWNER.PK_PS_ADM_PRSPCT_PLAN
/

--
-- PK_PS_ADM_PRSPCT_PLAN  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ADM_PRSPCT_PLAN ON CSSTG_OWNER.PS_ADM_PRSPCT_PLAN
(EMPLID, ACAD_CAREER, INSTITUTION, ACAD_PROG, ACAD_PLAN, 
SRC_SYS_ID)
/
