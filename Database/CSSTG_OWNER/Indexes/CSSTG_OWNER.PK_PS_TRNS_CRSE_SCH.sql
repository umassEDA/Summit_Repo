DROP INDEX CSSTG_OWNER.PK_PS_TRNS_CRSE_SCH
/

--
-- PK_PS_TRNS_CRSE_SCH  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_TRNS_CRSE_SCH ON CSSTG_OWNER.PS_TRNS_CRSE_SCH
(EMPLID, ACAD_CAREER, INSTITUTION, MODEL_NBR, SRC_SYS_ID)
/
