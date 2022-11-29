DROP INDEX CSSTG_OWNER.PK_PS_ACAD_PLAN
/

--
-- PK_PS_ACAD_PLAN  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ACAD_PLAN ON CSSTG_OWNER.PS_ACAD_PLAN
(EMPLID, ACAD_CAREER, STDNT_CAR_NBR, EFFDT, EFFSEQ, 
ACAD_PLAN, SRC_SYS_ID)
/