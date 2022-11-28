DROP TABLE CSSTG_OWNER.BB_GRADEBOOK_GRADE_S1 CASCADE CONSTRAINTS
/

--
-- BB_GRADEBOOK_GRADE_S1  (Table) 
--
CREATE TABLE CSSTG_OWNER.BB_GRADEBOOK_GRADE_S1
(
  BB_SOURCE                    VARCHAR2(10 CHAR) NOT NULL,
  PK1                          NUMBER           NOT NULL,
  GRADEBOOK_MAIN_PK1           NUMBER,
  COURSE_USERS_PK1             NUMBER,
  BATCH_UID                    VARCHAR2(256 CHAR),
  COMMENTS                     VARCHAR2(4000 CHAR),
  NOTES_FORMAT_TYPE            VARCHAR2(1 CHAR),
  FOR_STUDENT_COMMENTS         VARCHAR2(4000 CHAR),
  FEEDBACK_FORMAT_TYPE         VARCHAR2(1 CHAR),
  DATE_ADDED                   DATE,
  DATE_MODIFIED                DATE,
  LAST_OVERRIDE_DATE           DATE,
  LAST_ATTEMPT_DATE            DATE,
  STATUS                       NUMBER,
  HIGHEST_ATTEMPT_PK1          NUMBER,
  UP_HIGHEST_ATTEMPT_PK1       NUMBER,
  LOWEST_ATTEMPT_PK1           NUMBER,
  UP_LOWEST_ATTEMPT_PK1        NUMBER,
  LAST_ATTEMPT_PK1             NUMBER,
  FIRST_ATTEMPT_PK1            NUMBER,
  LAST_GRADED_ATTEMPT_PK1      NUMBER,
  UP_LAST_GRADED_ATTEMPT_PK1   NUMBER,
  FIRST_GRADED_ATTEMPT_PK1     NUMBER,
  UP_FIRST_GRADED_ATTEMPT_PK1  NUMBER,
  EXEMPT_ATTEMPT_IND           VARCHAR2(1 CHAR),
  AVERAGE_SCORE                NUMBER,
  UP_AVERAGE_SCORE             NUMBER,
  MANUAL_GRADE                 VARCHAR2(32 CHAR),
  MANUAL_SCORE                 NUMBER,
  VERSION                      NUMBER,
  EXEMPT_IND                   VARCHAR2(1 CHAR),
  EXCLUDED_IND                 VARCHAR2(1 CHAR),
  PENDING_MANUAL_GRADE         VARCHAR2(32 CHAR),
  PENDING_MANUAL_SCORE         NUMBER,
  PERF_CODE_PK1                NUMBER,
  AUTOMATIC_ZERO               VARCHAR2(1 CHAR),
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