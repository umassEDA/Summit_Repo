DROP INDEX CSSTG_OWNER.PK_UM_JOBS
/

--
-- PK_UM_JOBS  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_UM_JOBS ON CSSTG_OWNER.UM_JOBS
(PROJECT, JOB_NAME)
/
