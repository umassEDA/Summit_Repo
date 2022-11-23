DROP INDEX CSMRT_OWNER.NK_PS_D_RFRL_SRC
/

--
-- NK_PS_D_RFRL_SRC  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_PS_D_RFRL_SRC ON CSMRT_OWNER.PS_D_RFRL_SRC
(RFRL_SRC_ID, SRC_SYS_ID)
/