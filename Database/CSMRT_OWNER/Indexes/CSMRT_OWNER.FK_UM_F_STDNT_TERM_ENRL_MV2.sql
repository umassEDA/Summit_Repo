DROP INDEX CSMRT_OWNER.FK_UM_F_STDNT_TERM_ENRL_MV2
/

--
-- FK_UM_F_STDNT_TERM_ENRL_MV2  (Index) 
--
CREATE BITMAP INDEX CSMRT_OWNER.FK_UM_F_STDNT_TERM_ENRL_MV2 ON CSMRT_OWNER.UM_F_STDNT_TERM_ENRL_MV
(T_PERSON_SID)
/
