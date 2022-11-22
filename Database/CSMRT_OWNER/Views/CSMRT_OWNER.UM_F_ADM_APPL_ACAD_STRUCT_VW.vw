DROP VIEW CSMRT_OWNER.UM_F_ADM_APPL_ACAD_STRUCT_VW
/

--
-- UM_F_ADM_APPL_ACAD_STRUCT_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_F_ADM_APPL_ACAD_STRUCT_VW
BEQUEATH DEFINER
AS 
SELECT /*+ OPT_ESTIMATE(TABLE UM_F_ADM_APPL_ACAD_STRUCT MIN=100000) */
          ADM_APPL_SID,
          TERM_SID,
          PERSON_SID,
          STDNT_CAR_NUM,
          ACAD_PLAN_SID,
          ACAD_SPLAN_SID,
          SRC_SYS_ID,
          INSTITUTION_CD,
          ACAD_CAR_CD,
          TERM_CD,
          PERSON_ID,
          ACAD_PROG_CD,
          ACAD_PLAN_CD,
          ACAD_SPLAN_CD,
          EFFDT,
          EFFSEQ,
          ACTION_DT,
          ACAD_CAR_SID,
          ACAD_PROG_SID,
          ADMIT_TERM_SID,
          CAMPUS_SID,
          COMPL_TERM_SID,
          EXP_GRAD_TERM_SID,
          INSTITUTION_SID,
          REQ_TERM_SID,
          PROG_STAT_SID,
          PROG_ACN_SID,
          PROG_ACN_RSN_SID,
          PLAN_COMPL_TERM_SID,
          PLAN_REQ_TERM_SID,
          SPLAN_REQ_TERM_SID,
          STACK_BEGIN_TERM_SID,
          STACK_READMIT_TERM_SID,
          ADM_APPL_NBR,
          CERTIFICATE_ONLY_FLG,
          D_RANK,
          D_RANK_PTYPE,
          D_RANK_SPLAN,
          DATA_FROM_ADM_APPL_FLG,
          DEGR_CHKOUT_STAT,
          DEGR_CHKOUT_STAT_SD,
          DEGR_CHKOUT_STAT_LD,
          DEGREE_SEEKING_FLG,
          ED_LVL_RANK,
          MIN_PROG_STAT_CTGRY,
          MISSING_PROG_PLAN_FLG,
          PROGRAM_CATGRY,
          PLAN_ADVIS_STAT,
          PLAN_DECLARE_DT,
          PLAN_SEQUENCE,
          PLAN_DEGR_CHKOUT_STAT,
          PLAN_STDNT_DEGR_CD,
          SPLAN_DECLARE_DT,
          STACK_BEGIN_FLG,
          STACK_CONTINUE_FLG,
          STACK_READMIT_FLG,
           NVL ((SELECT min(TERM_BEGIN_DT) TERM_BEGIN_DT
                  FROM PS_D_TERM T
                 WHERE T.TERM_SID = UM_F_ADM_APPL_ACAD_STRUCT.TERM_SID),trunc(SYSDATE)) TERM_BEGIN_DT,             -- Temp!!!
           NVL ((SELECT min(TERM_END_DT) TERM_END_DT
                  FROM PS_D_TERM T
                 WHERE T.TERM_SID = UM_F_ADM_APPL_ACAD_STRUCT.TERM_SID),trunc(SYSDATE)) TERM_END_DT,             -- Temp!!!
          UMDAR_ED_LVL,
          UMDAR_ED_LVL_SD,
          UMDAR_ED_LVL_LD,
          PROG_CNT,
          PRIM_PROG_MAJOR_1_CNT,
          PRIM_PROG_MAJOR_2_CNT,
          PRIM_PROG_MINOR_1_CNT,
          PRIM_PROG_MINOR_2_CNT,
          PRIM_PROG_OTHER_PLAN_CNT,
          SEC_PROG_MAJOR_1_CNT,
          SEC_PROG_MAJOR_2_CNT,
          SEC_PROG_MINOR_1_CNT,
          SEC_PROG_MINOR_2_CNT,
          SEC_PROG_OTHER_PLAN_CNT,
          PP_SUB_PLAN_11_CNT,
          PP_SUB_PLAN_12_CNT,
          PP_SUB_PLAN_21_CNT,
          PP_SUB_PLAN_22_CNT,
          SP_SUB_PLAN_11_CNT,
          SP_SUB_PLAN_12_CNT,
          SP_SUB_PLAN_21_CNT,
          SP_SUB_PLAN_22_CNT,
          READMIT_STUDENT_CNT,
          CONTINUING_STUDENT_CNT,
          NEW_STUDENT_CNT,
          PRIM_PROG_MAJOR1_ORDER
     FROM CSMRT_OWNER.UM_F_ADM_APPL_ACAD_STRUCT
--    WHERE ROWNUM < 1000000000
/
