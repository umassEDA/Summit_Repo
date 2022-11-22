CREATE OR REPLACE VIEW UM_F_FA_STDNT_BDGT_VW
BEQUEATH DEFINER
AS 
SELECT 
           INSTITUTION_CD, ACAD_CAR_CD, AID_YEAR, TERM_CD, PERSON_ID, SRC_SYS_ID, 
           EFFDT, EFFSEQ, 
           INSTITUTION_SID, ACAD_CAR_SID, TERM_SID, PERSON_SID, 
           ACAD_PROG_SID, ACAD_PLAN_SID, ACAD_SPLAN_SID, 
           FIN_AID_FED_RES_SID, FIN_AID_ST_RES_SID, FIN_AID_FED_EXCPT_SID, FIN_AID_ST_EXCPT_SID, RESIDENCY_SID, 
           ACAD_LEVEL_BOT, ACAD_LEVEL_BOT_LD, ACAD_LEVEL_PROJ, ACAD_LEVEL_PROJ_LD, ACADEMIC_LOAD, ACADEMIC_LOAD_LD, ACAD_LOAD_APPR, 
           ACAD_PROG_PRIMARY, ACAD_PLAN, ACAD_SUB_PLAN, ACAD_PLAN_TYPE, AWARD_PERIOD, BUDGET_GROUP_CODE, BUDGET_GROUP_CODE_LD, 
           DEPNDNCY_STAT, DEPNDNCY_STAT_LD, DESCRSHORT, FA_LOAD, FA_LOAD_LD, FA_LOAD_CURRENT, FA_TERM_EFFDT, FA_TERM_EFFSEQ, FA_TERM_WEEKS, 
           FA_UNIT_ANTIC, FA_UNIT_COMPLETED, FA_UNIT_IN_PROG, FA_UNIT_CURRENT, FIN_AID_FED_RES, FIN_AID_ST_RES, FIN_AID_FED_EXCPT, FIN_AID_ST_EXCPT, 
           FORM_OF_STUDY, FORM_OF_STUDY_LD, HOUSING_TYPE, HOUSING_TYPE_LD, MARITAL_STAT, MARITAL_STAT_LD, NSLDS_LOAN_YEAR, NSLDS_LOAN_YEAR_LD, 
           NUMBER_IN_FAMILY, OPRID, POSTAL, PRORATE_BUDGET, RESIDENCY, STATE_RESIDENCE, APP_STATE_RESIDENC, 
           TERM_BEGIN_DT, TERM_END_DT, TERM_BUDGET_FLAG, TERM_TYPE, TERM_TYPE_LD, FED_TERM_COA, INST_TERM_COA, PELL_TERM_COA, SFA_PELTRM_COA_LHT, 
           LOAD_ERROR, DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM, BATCH_SID
      FROM UM_F_FA_STDNT_BDGT;