DROP INDEX CSSTG_OWNER.PK_PS_CLST_DETL_TBL
/

--
-- PK_PS_CLST_DETL_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_CLST_DETL_TBL ON CSSTG_OWNER.PS_CLST_DETL_TBL
(COURSE_LIST, EFFDT, R_COURSE_SEQUENCE, SRC_SYS_ID)
/