DROP INDEX CSSTG_OWNER.PK_PS_AID_YR_CAR_TERM
/

--
-- PK_PS_AID_YR_CAR_TERM  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_AID_YR_CAR_TERM ON CSSTG_OWNER.PS_AID_YR_CAR_TERM
(INSTITUTION, AID_YEAR, ACAD_CAREER, STRM, SRC_SYS_ID)
/
