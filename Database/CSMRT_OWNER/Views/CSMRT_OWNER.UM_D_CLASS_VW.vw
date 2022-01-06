CREATE OR REPLACE VIEW UM_D_CLASS_VW
BEQUEATH DEFINER
AS 
SELECT CLASS_SID,
           CRSE_CD,
           CRSE_OFFER_NUM,
           TERM_CD,
           SESSION_CD,
           CLASS_SECTION_CD,
           SRC_SYS_ID,
           INSTITUTION_CD,
           CLASS_NUM,
           INSTITUTION_SID,
           CLASS_CD,
           DESCR,
           ACAD_CAR_SID,
           TERM_SID,
           CRSE_SID,
           SESSION_SID,
           ACAD_GRP_SID,
           ACAD_ORG_SID,
           CAMPUS_SID,
           CLASS_ASSOC_SID,
           INSTRCTN_MODE_SID,
           LOC_SID,
           SCTN_COMBINED_SID,
           SSR_COMP_SID,
           ATTEND_GENERATE_FLG,
           ATTEND_SYNC_REQD_FLG,
		   ONLINE_FLG,               -- Case: 52679,   March 2021
           AUTO_ENROLL_SECT_1,
           AUTO_ENROLL_SECT_2,
           AUTO_ENRL_WAITLIST_FLG,
           CAMPUS_EVENT_NBR,
           CATALOG_NBR,
           CRSE_LVL,
           CLASS_START_DT,
           CLASS_END_DT,
           CLASS_CANCEL_DATE,
           CLASS_STAT,
           CLASS_STAT_SD,
           CLASS_STAT_LD,
           CLASS_TYPE,
           CLASS_TYPE_SD,
           CLASS_TYPE_LD,
           CNCL_IF_STUD_ENRLD_FLG,
           COMBINED_SECTION,
           COMBINED_SECTION_SD,
           COMBINED_SECTION_LD,
           CONSENT,
           CONSENT_SD,
           CONSENT_LD,
           CRS_TOPIC_ID,
           DYN_DT_INCLUDE_FLG,
           DYN_DT_CALC_REQ_FLG,
           ENRL_STAT,
           ENRL_STAT_SD,
           ENRL_STAT_LD,
           FEES_EXIST_FLG,
           HOLIDAY_SCHED_CD,
           HOLIDAY_SCHED_SD,
           HOLIDAY_SCHED_LD,
           NEXT_STDNT_POSITIN,
           PRIM_INSTR_SECT,
           PRINT_TOPIC_FLG,
           RCV_FROM_ITEM_TYPE_FLG,
           SBJCT_CD,
           SBJCT_SD,
           SBJCT_LD,
           SBJCT_FD,
           SCHEDULE_PRINT_FLG,
           SSR_DROP_CONSENT,
           SSR_DROP_CONSENT_SD,
           SSR_DROP_CONSENT_LD,
           STDNT_SPEC_PERM_FLG,
           TERM_BEGIN_DT,                                         -- June 2018
           TERM_END_DT,                                           -- June 2018
           WAITLIST_DAEMON,
           WAITLIST_DAEMON_SD,
           WAITLIST_DAEMON_LD,
           ENRL_CAP,
           ENRL_TOT,
           EXAM_SEAT_SPACING,
           MIN_ENRL,
           ROOM_CAP_REQUEST,
           WAIT_CAP,
           WAIT_TOT,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM UM_D_CLASS
     WHERE DATA_ORIGIN <> 'D';
