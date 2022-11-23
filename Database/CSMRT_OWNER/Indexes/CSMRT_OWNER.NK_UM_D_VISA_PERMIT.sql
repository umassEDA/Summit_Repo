DROP INDEX CSMRT_OWNER.NK_UM_D_VISA_PERMIT
/

--
-- NK_UM_D_VISA_PERMIT  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_UM_D_VISA_PERMIT ON CSMRT_OWNER.UM_D_VISA_PERMIT
(COUNTRY, VISA_PERMIT_TYPE, SRC_SYS_ID)
/