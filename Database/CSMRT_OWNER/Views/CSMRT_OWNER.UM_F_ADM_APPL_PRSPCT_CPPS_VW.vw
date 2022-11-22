DROP VIEW CSMRT_OWNER.UM_F_ADM_APPL_PRSPCT_CPPS_VW
/

--
-- UM_F_ADM_APPL_PRSPCT_CPPS_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_F_ADM_APPL_PRSPCT_CPPS_VW
BEQUEATH DEFINER
AS 
SELECT /*+ OPT_ESTIMATE(TABLE UM_F_ADM_APPL_PRSPCT_CPPS MIN=100000) */
          ADM_APPL_SID,
          PRSPCT_CAR_SID,
          SRC_SYS_ID,
          INSTITUTION_CD,
          ACAD_CAR_CD,
          CAR_ADMIT_TERM_SID,
          ADMIT_TERM,
          EMPLID,
          INSTITUTION_SID,
          ACAD_CAR_SID,
          ADMIT_TERM_SID,
          PERSON_SID,
          ACAD_PROG_SID,
          ACAD_PLAN_SID,
          ACAD_SPLAN_SID,
           NVL ((SELECT min(TERM_BEGIN_DT) TERM_BEGIN_DT
                  FROM PS_D_TERM T
                 WHERE T.TERM_SID = UM_F_ADM_APPL_PRSPCT_CPPS.ADMIT_TERM_SID),trunc(SYSDATE)) TERM_BEGIN_DT,             -- Temp!!!
           NVL ((SELECT min(TERM_END_DT) TERM_END_DT
                  FROM PS_D_TERM T
                 WHERE T.TERM_SID = UM_F_ADM_APPL_PRSPCT_CPPS.ADMIT_TERM_SID),trunc(SYSDATE)) TERM_END_DT,             -- Temp!!!
         PRSPCT_DSP_CNT
     FROM CSMRT_OWNER.UM_F_ADM_APPL_PRSPCT_CPPS
--    WHERE ROWNUM < 1000000000
/
