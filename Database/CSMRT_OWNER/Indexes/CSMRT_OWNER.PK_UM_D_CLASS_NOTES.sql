DROP INDEX CSMRT_OWNER.PK_UM_D_CLASS_NOTES
/

--
-- PK_UM_D_CLASS_NOTES  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_D_CLASS_NOTES ON CSMRT_OWNER.UM_D_CLASS_NOTES
(CRSE_CD, CRSE_OFFER_NUM, TERM_CD, SESSION_CD, CLASS_SECTION_CD, 
CLASS_NOTES_SEQ, SRC_SYS_ID)
/
