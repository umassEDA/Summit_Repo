CREATE OR REPLACE VIEW UM_R_FA_PERSON_RSDNCY_VW2
BEQUEATH DEFINER
AS 
SELECT /*+ OPT_ESTIMATE(TABLE UM_R_FA_PERSON_RSDNCY MIN=100000) */
           INSTITUTION_CD,
           ACAD_CAR_CD,
           AID_YEAR,
           TERM_CD,
           PERSON_ID,
           SRC_SYS_ID,
           RSDNCY_TERM_CD,
           INSTITUTION_SID,
           ACAD_CAR_SID,
           TERM_SID,
           PERSON_SID,
           RSDNCY_SID,
           ADM_RSDNCY_SID,
           FA_FED_RSDNCY_SID,
           FA_ST_RSDNCY_SID,
           TUITION_RSDNCY_SID,
           RSDNCY_TERM_SID,
           ADM_EXCPT_SID,
           FA_FED_EXCPT_SID,
           FA_ST_EXCPT_SID,
           TUITION_EXCPT_SID,
           RSDNCY_DT,
           APPEAL_EFFDT,
           APPEAL_STATUS,
           APPEAL_STATUS_SD,
           APPEAL_STATUS_LD,
           APPEAL_COMMENTS,
           LOAD_ERROR,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM,
           BATCH_SID
      FROM UM_R_FA_PERSON_RSDNCY
    WHERE ROWNUM < 100000000;
