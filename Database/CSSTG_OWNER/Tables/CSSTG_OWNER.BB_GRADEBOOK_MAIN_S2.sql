DROP TABLE CSSTG_OWNER.BB_GRADEBOOK_MAIN_S2 CASCADE CONSTRAINTS
/

--
-- BB_GRADEBOOK_MAIN_S2  (Table) 
--
CREATE TABLE CSSTG_OWNER.BB_GRADEBOOK_MAIN_S2
(
  BB_SOURCE                    VARCHAR2(10 CHAR) NOT NULL,
  PK1                          NUMBER           NOT NULL,
  POSITION                     NUMBER,
  GRADEBOOK_TRANSLATOR_PK1     NUMBER,
  SECONDARY_TRANSLATOR_PK1     NUMBER,
  GRADING_TERM_PK1             NUMBER,
  QTI_ASI_DATA_PK1             NUMBER,
  CRSMAIN_PK1                  NUMBER,
  BATCH_UID                    VARCHAR2(256 CHAR),
  COURSE_CONTENTS_PK1          NUMBER,
  LINKREFID                    VARCHAR2(255 CHAR),
  TITLE                        VARCHAR2(333 CHAR),
  DISPLAY_TITLE                VARCHAR2(333 CHAR),
  GRADEBOOK_TYPE_PK1           NUMBER,
  DESCRIPTION                  VARCHAR2(4000 CHAR),
  DESCRIPTION_TYPE             VARCHAR2(1 CHAR),
  DUE_DATE                     DATE,
  POSSIBLE                     NUMBER,
  VISIBLE_IND                  VARCHAR2(1 CHAR),
  VISIBLE_IN_BOOK_IND          VARCHAR2(1 CHAR),
  VISIBLE_IN_ALL_TERMS_IND     VARCHAR2(1 CHAR),
  STAT_VISIBLE_TO_STU_IND      VARCHAR2(1 CHAR),
  HIDE_ATTEMPT_IND             VARCHAR2(1 CHAR),
  WEIGHT                       NUMBER,
  DATE_ADDED                   DATE,
  DATE_MODIFIED                DATE,
  AGGREGATION_MODEL            NUMBER,
  CALCULATED_IND               VARCHAR2(1 CHAR),
  SCORABLE_IND                 VARCHAR2(1 CHAR),
  USER_CREATED_IND             VARCHAR2(1 CHAR),
  SINGLE_ATTEMPT_IND           VARCHAR2(1 CHAR),
  EXT_ASMT_ANALYSIS_URL        VARCHAR2(255 CHAR),
  EXT_ATMPT_HANDLER_URL        VARCHAR2(255 CHAR),
  SCORE_PROVIDER_HANDLE        VARCHAR2(65 CHAR),
  IGNORE_UNSCORED_IND          VARCHAR2(1 CHAR),
  LIMITED_ATTENDANCE_IND       VARCHAR2(1 CHAR),
  VERSION                      NUMBER,
  DELETED_IND                  VARCHAR2(1 CHAR),
  MULTIPLE_ATTEMPTS            NUMBER,
  TOOL_COMPUTED_POINTS         NUMBER,
  GRADING_DECIMAL_PLACES       NUMBER,
  DELEGATED_GRADING_IND        VARCHAR2(1 CHAR),
  PEER_GRADING_IND             VARCHAR2(1 CHAR),
  PEER_REVIEWS_PER_STUDENT     NUMBER,
  ANONYMOUS_GRADING_IND        VARCHAR2(1 CHAR),
  PEER_ALLOW_LATE_REVIEWS_IND  VARCHAR2(1 CHAR),
  ANON_GRADING_RELEASE_DATE    DATE,
  ANON_GRADING_REL_CRIT        VARCHAR2(1 CHAR),
  LTI_DOMAIN_PK1               NUMBER,
  LTI_TAG                      VARCHAR2(256 CHAR),
  LTI_RES_ID                   VARCHAR2(256 CHAR),
  DELETE_FLAG                  VARCHAR2(1 CHAR) DEFAULT 'N',
  INSERT_TIME                  DATE             DEFAULT SYSDATE,
  UPDATE_TIME                  DATE             DEFAULT SYSDATE
)
COMPRESS BASIC
PARTITION BY LIST (BB_SOURCE)
(  
  PARTITION UMAMH VALUES ('UMAMH')
    COMPRESS BASIC,  
  PARTITION UMBOS VALUES ('UMBOS')
    COMPRESS BASIC,  
  PARTITION UMDAR VALUES ('UMDAR')
    COMPRESS BASIC,  
  PARTITION UMLOW VALUES ('UMLOW')
    COMPRESS BASIC,  
  PARTITION UMLOW_DAY VALUES ('UMLOW_DAY')
    COMPRESS BASIC,  
  PARTITION UMOL VALUES ('UMOL')
    COMPRESS BASIC,  
  PARTITION UMWOR VALUES ('UMWOR')
    COMPRESS BASIC
)
/