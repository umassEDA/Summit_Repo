DROP INDEX CSMRT_OWNER.FK_UM_F_STDNT_TERM_MV42
/

--
-- FK_UM_F_STDNT_TERM_MV42  (Index) 
--
CREATE BITMAP INDEX CSMRT_OWNER.FK_UM_F_STDNT_TERM_MV42 ON CSMRT_OWNER.UM_F_STDNT_TERM_MV
(STRT_ACAD_LVL_SID)
/