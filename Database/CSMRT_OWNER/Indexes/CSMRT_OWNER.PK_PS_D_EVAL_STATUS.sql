DROP INDEX CSMRT_OWNER.PK_PS_D_EVAL_STATUS
/

--
-- PK_PS_D_EVAL_STATUS  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_PS_D_EVAL_STATUS ON CSMRT_OWNER.PS_D_EVAL_STATUS
(EVAL_STAT_SID)
/