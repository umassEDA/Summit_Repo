DROP INDEX CSMRT_OWNER.PK_UM_F_ADM_APPL_CHK
/

--
-- PK_UM_F_ADM_APPL_CHK  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_ADM_APPL_CHK ON CSMRT_OWNER.UM_F_ADM_APPL_CHK
(APPLCNT_SID, ADM_APPL_NBR, SEQ_3C, CHECKLIST_SEQ, SRC_SYS_ID)
/