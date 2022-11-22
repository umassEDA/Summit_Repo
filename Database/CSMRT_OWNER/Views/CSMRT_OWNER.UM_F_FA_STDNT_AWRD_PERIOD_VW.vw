DROP VIEW CSMRT_OWNER.UM_F_FA_STDNT_AWRD_PERIOD_VW
/

--
-- UM_F_FA_STDNT_AWRD_PERIOD_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_F_FA_STDNT_AWRD_PERIOD_VW
BEQUEATH DEFINER
AS 
SELECT INSTITUTION_CD,
           AID_YEAR,
           PERSON_ID,
           AWARD_PERIOD,
           SRC_SYS_ID,
           INSTITUTION_SID,
           PERSON_SID,
           BASE_WEEKS,
           BDGT_DURATION_FED,
           BDGT_DURATION_INST,
           EFC_STATUS,
           EFC_STATUS_LD,
           FANLTR_STATUS,
           FANLTR_STATUS_LD,
           FANLTR_STATUS_PREH,
           FED_EFC,
           FED_NEED,
           FED_NEED_BASE_AID,
           FED_OVRAWD_AMT,
           FED_OVRAWD_COA,
           FED_PARENT_CONTRB,
           FED_SPECIAL_AID,
           FED_STDNT_CONTRB,
           FED_TOTAL_AID,
           FED_UNMET_COA,
           FED_UNMET_NEED,
           FED_YEAR_COA,
           ISIR_CALC_EFC,
           ISIR_CALC_SC,
           ISIR_CALC_PC,
           INST_CALC_EFC,
           INST_CALC_SC,
           INST_CALC_PC,
           INST_EFC,
           INST_EFC_OVERIDE,
           INST_NEED,
           INST_NEED_BASE_AID,
           INST_OVRAWD_AMT,
           INST_OVRAWD_COA,
           INST_PARENT_CONTRB,
           INST_SPECIAL_AID,
           INST_STDNT_CONTRB,
           INST_TOTAL_AID,
           INST_UNMET_COA,
           INST_UNMET_NEED,
           INST_YEAR_COA,
           PELL_YEAR_COA,
           PRORATED_EFC,
           PRORATED_PAR_CNTRB,
           PRORATED_STU_CNTRB,
           SFA_PELLYR_COA_LHT,
           VET_ED_BENEFIT,
           VET_ED_FAN_PRINT,
           WEEKS_ENROLLED,
           WEEKLY_PC,
           WEEKLY_SC,
           COMMENTS,
           LOAD_ERROR,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM,
           BATCH_SID
      FROM CSMRT_OWNER.UM_F_FA_STDNT_AWRD_PERIOD
     where ROWNUM < 100000000
/
