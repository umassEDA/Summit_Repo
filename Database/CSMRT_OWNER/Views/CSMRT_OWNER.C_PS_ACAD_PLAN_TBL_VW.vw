DROP VIEW CSMRT_OWNER.C_PS_ACAD_PLAN_TBL_VW
/

--
-- C_PS_ACAD_PLAN_TBL_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_PS_ACAD_PLAN_TBL_VW
BEQUEATH DEFINER
AS 
SELECT INSTITUTION, 
		   ACAD_PLAN, 
		   EFFDT, 
		   SRC_SYS_ID, 
		   EFF_STATUS, 
		   DESCR, 
		   DESCRSHORT, 
		   ACAD_PLAN_TYPE, 
		   ACAD_PROG, 
		   PLN_REQTRM_DFLT, 
		   DEGREE, 
		   DIPLOMA_DESCR, 
		   DIPLOMA_PRINT_FL, 
		   DIPLOMA_INDENT, 
		   TRNSCR_DESCR, 
		   TRNSCR_PRINT_FL, 
		   TRNSCR_INDENT, 
		   FIRST_TERM_VALID, 
		   CIP_CODE, 
		   HEGIS_CODE, 
		   ACAD_CAREER, 
		   TRANSCRIPT_LEVEL, 
		   STUDY_FIELD, 
		   EVALUATE_PLAN, 
		   SSR_LAST_PRS_DT, 
		   SSR_LAST_ADM_TERM, 
		   SAA_WHIF_DISP_ADVR, 
		   SAA_WHIF_DISP_PREM, 
		   SAA_WHIF_DISP_STD, 
		   SSR_NSC_CRD_LVL, 
		   SSR_PROG_LEN_TYPE, 
		   SSR_PROG_LENGTH, 
		   SFA_SPEC_PROG_FLG, 
		   SSR_NSC_INCL_PLAN, 
		   LOAD_ERROR, 
		   DATA_ORIGIN, 
		   CREATED_EW_DTTM, 
		   LASTUPD_EW_DTTM, 
		   BATCH_SID, 
		   DESCRLONG
	 FROM  CSSTG_OWNER.PS_ACAD_PLAN_TBL
	 WHERE DATA_ORIGIN <> 'D'
/
