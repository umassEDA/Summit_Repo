DROP INDEX CSMRT_OWNER.NK_PS_D_INSTRCTR_ROLE
/

--
-- NK_PS_D_INSTRCTR_ROLE  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_PS_D_INSTRCTR_ROLE ON CSMRT_OWNER.PS_D_INSTRCTR_ROLE
(INSTRCTR_ROLE_CD, SRC_SYS_ID)
/
