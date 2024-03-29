DROP VIEW CSSTG_OWNER.BB_GRADEBOOK_MAIN_S2_VW
/

--
-- BB_GRADEBOOK_MAIN_S2_VW  (View) 
--
CREATE OR REPLACE VIEW CSSTG_OWNER.BB_GRADEBOOK_MAIN_S2_VW
BEQUEATH DEFINER
AS 
select BB_SOURCE,PK1,POSITION,GRADEBOOK_TRANSLATOR_PK1,SECONDARY_TRANSLATOR_PK1,GRADING_TERM_PK1,QTI_ASI_DATA_PK1,CRSMAIN_PK1,BATCH_UID,COURSE_CONTENTS_PK1,LINKREFID,TITLE,DISPLAY_TITLE,GRADEBOOK_TYPE_PK1,DESCRIPTION,DESCRIPTION_TYPE,DUE_DATE,POSSIBLE,VISIBLE_IND,VISIBLE_IN_BOOK_IND,VISIBLE_IN_ALL_TERMS_IND,STAT_VISIBLE_TO_STU_IND,HIDE_ATTEMPT_IND,WEIGHT,DATE_ADDED,DATE_MODIFIED,AGGREGATION_MODEL,CALCULATED_IND,SCORABLE_IND,USER_CREATED_IND,SINGLE_ATTEMPT_IND,EXT_ASMT_ANALYSIS_URL,EXT_ATMPT_HANDLER_URL,SCORE_PROVIDER_HANDLE,IGNORE_UNSCORED_IND,LIMITED_ATTENDANCE_IND,VERSION,DELETED_IND,MULTIPLE_ATTEMPTS,TOOL_COMPUTED_POINTS,GRADING_DECIMAL_PLACES,DELEGATED_GRADING_IND,PEER_GRADING_IND,PEER_REVIEWS_PER_STUDENT,ANONYMOUS_GRADING_IND,PEER_ALLOW_LATE_REVIEWS_IND,ANON_GRADING_RELEASE_DATE,ANON_GRADING_REL_CRIT,LTI_DOMAIN_PK1,LTI_TAG,LTI_RES_ID,DELETE_FLAG,INSERT_TIME,UPDATE_TIME 
  from CSSTG_OWNER.BB_GRADEBOOK_MAIN_S2@SMTPROD
/
