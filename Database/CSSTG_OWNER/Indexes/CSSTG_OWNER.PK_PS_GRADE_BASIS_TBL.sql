DROP INDEX CSSTG_OWNER.PK_PS_GRADE_BASIS_TBL
/

--
-- PK_PS_GRADE_BASIS_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_GRADE_BASIS_TBL ON CSSTG_OWNER.PS_GRADE_BASIS_TBL
(SETID, GRADING_SCHEME, EFFDT, GRADING_BASIS, SRC_SYS_ID)
/
