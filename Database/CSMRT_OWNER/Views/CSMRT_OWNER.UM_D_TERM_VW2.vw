DROP VIEW CSMRT_OWNER.UM_D_TERM_VW2
/

--
-- UM_D_TERM_VW2  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_TERM_VW2
BEQUEATH DEFINER
AS 
SELECT TERM_SID,
           INSTITUTION_CD,
           ACAD_CAR_CD,
           TERM_CD,
           SRC_SYS_ID,
           TERM_SD,
           TERM_LD,
           TERM_CD_DESC,
           INSTITUTION_SID,
           ACAD_CAR_SID,
           ACAD_YR_SID,
           TERM_BEGIN_DT,
           TERM_END_DT,
           EFF_START_DT,
           EFF_END_DT,
           CURRENT_TERM_FLG,
           AID_YEAR,
           INSTRCTN_WEEK_NUM,
           SIXTY_PCT_DT,
           PREV_TERM,
           PREV_TERM_2,
           NEXT_TERM,
           NEXT_TERM_2,
           PREV_FALL,
           PREV_WINTER,
           PREV_SPRING,
           PREV_SUMMER,
           PREV_SUMMER_2,
           NEXT_FALL,
           NEXT_WINTER,
           NEXT_SPRING,
           NEXT_SUMMER,
           NEXT_SUMMER_2,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM PS_D_TERM
     where ROWNUM < 100000
/
