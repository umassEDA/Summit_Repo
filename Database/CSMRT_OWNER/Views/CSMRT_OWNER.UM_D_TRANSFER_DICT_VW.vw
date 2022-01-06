CREATE OR REPLACE VIEW UM_D_TRANSFER_DICT_VW
BEQUEATH DEFINER
AS 
select TRNSFR_DICT_SID, INSTITUTION_CD, TRNSFR_SRC_ID, COMP_SUBJECT_AREA, TRNSFR_EQVLNCY_CMP, TRNSFR_CMP_SEQ, CRSE_ID, SRC_SYS_ID, 
       EFFDT, EFF_STATUS, TRNSFR_SUBJ_DESCR, TRNSFR_COMP_DESCR, CRSE_SID, EXT_CRSE_SID, EXT_ORG_SID, 
       EXT_CRSE_OFFER_NBR, EXT_TERM_TYPE, EXT_TERM_TYPE_SD, EXT_TERM_TYPE_LD, GRADE_PTS_MIN, GRADE_PTS_MAX, 
       INP_CRSE_CNT, INT_TRANSFER_FLG, SCHOOL_SUBJECT, SCHOOL_CRSE_NBR, SSR_MAX_AGE, TRNSFR_CRSE_FLG, TRNSFR_CRSE_STATUS, TRNSFR_GRADE_FLG, 
       UM_CRSE_ID, UM_CRSE_OFFER_NBR, UM_SSR_TR_DEF_GRD_TYP, UM_SSR_TR_DEF_GRD_TYP_SD, UM_SSR_TR_DEF_GRD_TYP_LD, UM_SSR_TR_DEF_GRD_SEQ, 
       UM_UNIT_TAKEN, UNITS_MINIMUM, UNITS_MAXIMUM, UNT_TRNSFR_SRC, UNT_TRNSFR_SRC_SD, UNT_TRNSFR_SRC_LD, XS_CRSE_FLG, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from UM_D_TRANSFER_DICT;
