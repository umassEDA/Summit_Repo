DROP VIEW CSMRT_OWNER.UM_D_ACAD_CAR_VW2
/

--
-- UM_D_ACAD_CAR_VW2  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_ACAD_CAR_VW2
BEQUEATH DEFINER
AS 
SELECT ACAD_CAR_SID,
           INSTITUTION_CD,
           ACAD_CAR_CD,
           SRC_SYS_ID,
           EFFDT,
           EFF_STAT_CD,
           ACAD_CAR_SD,
           ACAD_CAR_LD,
           ACAD_CAR_CD_DESC,
           ACAD_PLAN_TYPE,
           FA_CAR_TYPE,
           FA_PRIMACY_NBR,
           GRADING_BASIS,
           GRADING_SCHEME,
           GRADE_TRANSFER,
           GRADUATE_LVL_IND,
           OEE_IND,
           REPEAT_CRSE_ERROR,
           REPEAT_GRD_CK,
           REPEAT_GRD_SUSP,
           REPEAT_ENRL_CTL,
           REPEAT_ENRL_SUSP,
           REPEAT_RULE,
           REPEAT_SCHEME,
           SF_GRAD_DESIGNATIO,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM PS_D_ACAD_CAR
     where ROWNUM < 10000
/
