DROP INDEX CSSTG_OWNER.PK_PS_GRADE_TBL
/

--
-- PK_PS_GRADE_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_GRADE_TBL ON CSSTG_OWNER.PS_GRADE_TBL
(SETID, GRADING_SCHEME, EFFDT, GRADING_BASIS, CRSE_GRADE_INPUT, 
SRC_SYS_ID)
/
