DROP INDEX CSMRT_OWNER.NK_UM_D_RFRL_DTL
/

--
-- NK_UM_D_RFRL_DTL  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_UM_D_RFRL_DTL ON CSMRT_OWNER.UM_D_RFRL_DTL
(INSTITUTION_CD, RFRL_GRP, RFRL_DTL, SRC_SYS_ID)
/