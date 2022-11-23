DROP INDEX CSMRT_OWNER.NK_UM_D_SCTN_CMBND
/

--
-- NK_UM_D_SCTN_CMBND  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_UM_D_SCTN_CMBND ON CSMRT_OWNER.UM_D_SCTN_CMBND
(INSTITUTION_CD, TERM_CD, SESSION_CD, SCTN_COMBINED_ID, SRC_SYS_ID)
/