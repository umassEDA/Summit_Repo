DROP INDEX CSSTG_OWNER.PK_PS_GPA_TYPE_TBL
/

--
-- PK_PS_GPA_TYPE_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_GPA_TYPE_TBL ON CSSTG_OWNER.PS_GPA_TYPE_TBL
(INSTITUTION, GPA_TYPE, EFFDT, SRC_SYS_ID)
/
