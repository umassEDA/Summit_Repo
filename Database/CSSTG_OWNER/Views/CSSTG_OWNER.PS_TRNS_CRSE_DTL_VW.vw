DROP VIEW CSSTG_OWNER.PS_TRNS_CRSE_DTL_VW
/

--
-- PS_TRNS_CRSE_DTL_VW  (View) 
--
CREATE OR REPLACE VIEW CSSTG_OWNER.PS_TRNS_CRSE_DTL_VW
BEQUEATH DEFINER
AS 
SELECT 
EMPLID, 
ACAD_CAREER, 
INSTITUTION, 
MODEL_NBR, 
ARTICULATION_TERM, 
TRNSFR_EQVLNCY_GRP, 
TRNSFR_EQVLNCY_SEQ, 
SRC_SYS_ID, 
TRNSFR_STAT, 
TRNSFR_SRC_ID, 
TRNSFR_EQVLNCY, 
TRNSFR_EQVLNCY_CMP, 
EXT_COURSE_NBR, 
SRC_TERM, 
SRC_CLASS_NBR, 
TERM_YEAR, 
EXT_TERM, 
SCHOOL_SUBJECT, 
SCHOOL_CRSE_NBR, 
DESCR, 
SSR_UNT_TAKEN_EXT, 
UNT_TAKEN, 
CRSE_GRADE_INPUT, 
CRSE_ID, 
CRSE_OFFER_NBR, 
GRADING_SCHEME, 
GRADING_BASIS, 
UNT_TRNSFR, 
CRSE_GRADE_OFF, 
GRD_PTS_PER_UNIT, 
EARN_CREDIT, 
INCLUDE_IN_GPA, 
UNITS_ATTEMPTED, 
REPEAT_CODE, 
RQMNT_DESIGNTN, 
FREEZE_REC_FL, 
INPUT_CHG_FL, 
REJECT_REASON, 
OVRD_TRCR_FL, 
OVRD_RSN, 
COURSE_LEVEL, 
VALID_ATTEMPT, 
GRADE_CATEGORY, 
COMP_SUBJECT_AREA, 
SSR_FAWI_INCL, 
LOAD_ERROR, 
DATA_ORIGIN, 
CREATED_EW_DTTM, 
LASTUPD_EW_DTTM, 
BATCH_SID, 
CAST (TRIM (SUBSTR (COMMENTS, 1, 2000)) AS VARCHAR2 (2000)) COMMENTS
FROM PS_TRNS_CRSE_DTL
/