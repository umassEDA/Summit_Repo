DROP INDEX CSMRT_OWNER.NK_PS_D_INSTRCTN_MODE
/

--
-- NK_PS_D_INSTRCTN_MODE  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_PS_D_INSTRCTN_MODE ON CSMRT_OWNER.PS_D_INSTRCTN_MODE
(INSTITUTION_CD, INSTRCTN_MODE_CD, SRC_SYS_ID)
/
