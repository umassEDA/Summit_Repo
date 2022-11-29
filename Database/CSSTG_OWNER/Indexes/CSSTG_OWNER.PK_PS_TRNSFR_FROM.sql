DROP INDEX CSSTG_OWNER.PK_PS_TRNSFR_FROM
/

--
-- PK_PS_TRNSFR_FROM  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_TRNSFR_FROM ON CSSTG_OWNER.PS_TRNSFR_FROM
(INSTITUTION, TRNSFR_SRC_ID, COMP_SUBJECT_AREA, EFFDT, TRNSFR_EQVLNCY_CMP, 
TRNSFR_CMP_SEQ, SRC_SYS_ID)
/