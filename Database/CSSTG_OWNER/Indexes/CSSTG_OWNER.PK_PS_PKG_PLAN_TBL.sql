DROP INDEX CSSTG_OWNER.PK_PS_PKG_PLAN_TBL
/

--
-- PK_PS_PKG_PLAN_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_PKG_PLAN_TBL ON CSSTG_OWNER.PS_PKG_PLAN_TBL
(INSTITUTION, AID_YEAR, ACAD_CAREER, PKG_PLAN_ID, EFFDT, 
SRC_SYS_ID)
/