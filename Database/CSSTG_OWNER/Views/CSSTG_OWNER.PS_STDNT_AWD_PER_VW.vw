DROP VIEW CSSTG_OWNER.PS_STDNT_AWD_PER_VW
/

--
-- PS_STDNT_AWD_PER_VW  (View) 
--
CREATE OR REPLACE VIEW CSSTG_OWNER.PS_STDNT_AWD_PER_VW
BEQUEATH DEFINER
AS 
SELECT 
EMPLID, 
INSTITUTION, 
AID_YEAR, 
AWARD_PERIOD, 
SRC_SYS_ID, 
FED_EFC, 
EFC_STATUS, 
INST_EFC, 
FED_NEED_BASE_AID, 
INST_NEED_BASE_AID, 
FED_YEAR_COA, 
INST_YEAR_COA, 
PELL_YEAR_COA, 
FED_NEED, 
INST_NEED, 
FED_UNMET_NEED, 
FED_OVRAWD_AMT, 
INST_UNMET_NEED, 
INST_OVRAWD_AMT, 
FED_PARENT_CONTRB, 
INST_PARENT_CONTRB, 
FED_STDNT_CONTRB, 
INST_STDNT_CONTRB, 
INST_EFC_OVERIDE, 
BASE_WEEKS, 
WEEKS_ENROLLED, 
WEEKLY_PC, 
WEEKLY_SC, 
PRORATED_EFC, 
FED_SPECIAL_AID, 
INST_SPECIAL_AID, 
FED_TOTAL_AID, 
INST_TOTAL_AID, 
FED_UNMET_COA, 
INST_UNMET_COA, 
FED_OVRAWD_COA, 
INST_OVRAWD_COA, 
VET_ED_BENEFIT, 
VET_ED_FAN_PRINT, 
PRORATED_PAR_CNTRB, 
PRORATED_STU_CNTRB, 
BDGT_DURATION_FED, 
BDGT_DURATION_INST, 
FANLTR_STATUS, 
FANLTR_STATUS_PREH, 
INST_CALC_SC, 
INST_CALC_PC, 
INST_CALC_EFC, 
ISIR_CALC_SC, 
ISIR_CALC_PC, 
ISIR_CALC_EFC, 
SFA_PELLYR_COA_LHT, 
LOAD_ERROR, 
DATA_ORIGIN, 
CREATED_EW_DTTM, 
LASTUPD_EW_DTTM, 
BATCH_SID, 
CAST (TRIM (SUBSTR (COMMENTS, 1, 2000)) AS VARCHAR2 (2000)) COMMENTS
FROM PS_STDNT_AWD_PER
/
