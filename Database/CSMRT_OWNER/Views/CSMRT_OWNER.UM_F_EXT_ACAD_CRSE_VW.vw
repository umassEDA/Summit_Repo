CREATE OR REPLACE VIEW UM_F_EXT_ACAD_CRSE_VW
BEQUEATH DEFINER
AS 
SELECT PERSON_ID, EXT_ORG_ID, EXT_COURSE_NBR, SRC_SYS_ID, 
    INSTITUTION_CD, EXT_COURSE_DESCR, PERSON_SID, EXT_ORG_SID, INSTITUTION_SID, EXT_ACAD_CAR_SID, TST_DATA_SRC_SID, ACAD_UNIT_TYPE_SID, EXT_ACAD_LVL_SID, EXT_TERM_SID, 
    BEGIN_DT, END_DT, CAN_TRNS_TYPE, CAN_TRNS_TYPE_SD, CAN_TRNS_TYPE_LD, COURSE_LEVEL, COURSE_LEVEL_SD, COURSE_LEVEL_LD, CRSE_GRADE_INPUT, CRSE_GRADE_OFF, 
    EXT_CRSE_TYPE, EXT_CRSE_TYPE_SD, EXT_CRSE_TYPE_LD, EXT_DATA_NBR, EXT_SUBJECT_AREA, EXT_TERM_YEAR_SID, GRADING_BASIS, GRADING_BASIS_SD, GRADING_BASIS_LD, 
    GRADING_SCHEME, GRADING_SCHEME_SD, GRADING_SCHEME_LD, SCHOOL_SUBJECT, SCHOOL_CRSE_NBR, TRANS_CREDIT_FLAG, UNT_TAKEN, LASTUPDDTTM, LASTUPDOPRID, 
           LOAD_ERROR, DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM, BATCH_SID
      FROM UM_F_EXT_ACAD_CRSE;