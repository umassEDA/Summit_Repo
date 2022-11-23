DROP INDEX CSMRT_OWNER.NK_PS_D_ENRL_RSN
/

--
-- NK_PS_D_ENRL_RSN  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_PS_D_ENRL_RSN ON CSMRT_OWNER.PS_D_ENRL_RSN
(SETID, ACAD_CAR_CD, ENRL_ACTION, ENRL_ACT_RSN, SRC_SYS_ID)
/