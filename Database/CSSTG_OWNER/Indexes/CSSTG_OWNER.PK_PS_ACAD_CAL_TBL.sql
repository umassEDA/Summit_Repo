DROP INDEX CSSTG_OWNER.PK_PS_ACAD_CAL_TBL
/

--
-- PK_PS_ACAD_CAL_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ACAD_CAL_TBL ON CSSTG_OWNER.PS_ACAD_CAL_TBL
(INSTITUTION, ACAD_CAREER, ACAD_CALENDAR_ID, SRC_SYS_ID)
/
