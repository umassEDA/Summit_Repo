DROP INDEX CSMRT_OWNER.NK_PS_D_RECRT_CTGRY
/

--
-- NK_PS_D_RECRT_CTGRY  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_PS_D_RECRT_CTGRY ON CSMRT_OWNER.PS_D_RECRT_CTGRY
(INSTITUTION_CD, RECRT_CTGRY_ID, SRC_SYS_ID)
/