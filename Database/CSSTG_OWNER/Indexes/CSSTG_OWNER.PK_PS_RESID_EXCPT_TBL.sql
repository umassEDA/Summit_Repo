DROP INDEX CSSTG_OWNER.PK_PS_RESID_EXCPT_TBL
/

--
-- PK_PS_RESID_EXCPT_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_RESID_EXCPT_TBL ON CSSTG_OWNER.PS_RESID_EXCPT_TBL
(RESIDENCY_EXCPTN, EFFDT, SRC_SYS_ID)
/
