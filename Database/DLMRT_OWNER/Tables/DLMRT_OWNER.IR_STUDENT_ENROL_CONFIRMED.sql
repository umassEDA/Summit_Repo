DROP TABLE DLMRT_OWNER.IR_STUDENT_ENROL_CONFIRMED CASCADE CONSTRAINTS
/

--
-- IR_STUDENT_ENROL_CONFIRMED  (Table) 
--
CREATE TABLE DLMRT_OWNER.IR_STUDENT_ENROL_CONFIRMED
(
  INSTITUTION                      VARCHAR2(5 BYTE),
  CAMPUS                           VARCHAR2(30 BYTE),
  CENSUS_PERIOD                    VARCHAR2(5 BYTE),
  CENSUS_PERIOD_DESCR              VARCHAR2(50 BYTE),
  CENSUS_SEQ                       INTEGER,
  PERSON_ID                        VARCHAR2(15 BYTE),
  ACADEMIC_CAREER_PS               VARCHAR2(4 BYTE),
  STUDENT_CAREER_NUMBER_PS         INTEGER,
  TERM_CODE_PS                     VARCHAR2(5 BYTE),
  HEADCOUNT                        INTEGER,
  CAREER_LEVEL_CODE                VARCHAR2(4 BYTE),
  PROGRAM_TYPE                     VARCHAR2(15 BYTE),
  EDUCATION_LEVEL_CODE             VARCHAR2(2 BYTE),
  EDUCATION_LEVEL_DESCR            VARCHAR2(50 BYTE),
  DOCTORATE_TYPE_CODE              VARCHAR2(1 BYTE),
  CES_STUDENT_FLAG                 VARCHAR2(1 BYTE),
  REPORTED_TO_IPEDS_FLAG           VARCHAR2(1 BYTE),
  ADMIT_TYPE                       VARCHAR2(10 BYTE),
  ADMIT_TERM_CODE                  VARCHAR2(5 BYTE),
  ADMIT_TERM_DESCR                 VARCHAR2(50 BYTE),
  FIRST_GENERATION_FLAG            VARCHAR2(1 BYTE),
  NEW_OR_CONTINUING                VARCHAR2(10 BYTE),
  PRIMARY_COLLEGE_CODE             VARCHAR2(10 BYTE),
  PRIMARY_COLLEGE_DESCR            VARCHAR2(50 BYTE),
  PRIMARY_MAJOR_CODE               VARCHAR2(10 BYTE),
  PRIMARY_MAJOR_DESCR              VARCHAR2(100 BYTE),
  PRIMARY_MAJOR_CIP_CODE           VARCHAR2(7 BYTE),
  PRIMARY_MAJOR_PLAN_TYPE          VARCHAR2(30 BYTE),
  STEM_FLAG                        VARCHAR2(1 BYTE),
  PRIMARY_MAJOR_SUB_PLAN_TYPE      VARCHAR2(30 BYTE),
  PRIMARY_MAJOR_SUB_PLAN_CODE      VARCHAR2(10 BYTE),
  PRIMARY_MAJOR_SUB_PLAN_DESCR     VARCHAR2(100 BYTE),
  PRIMARY_MAJOR_SUB_PLAN_CIP_CODE  VARCHAR2(7 BYTE),
  ACADEMIC_LEVEL_BOT_CODE          VARCHAR2(2 BYTE),
  ACADEMIC_LEVEL_BOT_DESCR         VARCHAR2(50 BYTE),
  ACADEMIC_LEVEL_EOT_CODE          VARCHAR2(2 BYTE),
  ACADEMIC_LEVEL_EOT_DESCR         VARCHAR2(50 BYTE),
  EXPECTED_GRAD_TERM_CODE          VARCHAR2(5 BYTE),
  EXPECTED_GRAD_TERM_DESCR         VARCHAR2(50 BYTE),
  CUMULATIVE_CREDITS               NUMBER(6,3),
  CUMULATIVE_GPA                   NUMBER(4,3),
  FT_PT_CODE                       VARCHAR2(2 BYTE),
  FT_PT_DESCR                      VARCHAR2(50 BYTE),
  TOTAL_CREDITS                    NUMBER(6,3),
  ONLINE_CREDITS                   NUMBER(6,3),
  NON_ONLINE_CREDITS               NUMBER(6,3),
  ONLINE_ONLY_STUDENT_FLAG         VARCHAR2(1 BYTE),
  MIXED_MODE_INSTRUCTION_FLAG      VARCHAR2(1 BYTE),
  CE_CREDITS                       NUMBER(6,3),
  NON_CE_CREDITS                   NUMBER(6,3),
  TOTAL_FTE                        NUMBER,
  ONLINE_FTE                       NUMBER,
  CE_FTE                           NUMBER,
  CLASS_COUNT                      INTEGER,
  ONLINE_CLASS_COUNT               INTEGER,
  CE_CLASS_COUNT                   INTEGER,
  ALL_REGISTRATION_COUNT           INTEGER,
  ONLINE_REGISTRATION_COUNT        INTEGER,
  CE_REGISTRATION_COUNT            INTEGER,
  PELL_RECIPIENT_FLAG              VARCHAR2(1 BYTE),
  INSERT_TIME                      DATE,
  DEG_SEEKING_STATUS               VARCHAR2(50 BYTE) GENERATED ALWAYS AS (CASE "PROGRAM_TYPE" WHEN 'Non-Degree' THEN 'Non-Degree Seeking' ELSE 'Degree Seeking' END),
  UGRD_GRAD                        VARCHAR2(50 BYTE) GENERATED ALWAYS AS (CASE "CAREER_LEVEL_CODE" WHEN 'UGRD' THEN 'Undergraduate' ELSE 'Graduate' END)
)
COMPRESS BASIC
PARTITION BY LIST (INSTITUTION, CENSUS_PERIOD, CENSUS_SEQ)
(  
  PARTITION UMAMH_PPPPP_1 VALUES (( 'UMAMH', 'PPPPP', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20181_1 VALUES (( 'UMWOR', '20181', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20174_1 VALUES (( 'UMWOR', '20174', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20183_1 VALUES (( 'UMWOR', '20183', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20194_1 VALUES (( 'UMWOR', '20194', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20201_1 VALUES (( 'UMWOR', '20201', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20203_1 VALUES (( 'UMWOR', '20203', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20211_1 VALUES (( 'UMWOR', '20211', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20184_1 VALUES (( 'UMWOR', '20184', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20191_1 VALUES (( 'UMWOR', '20191', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20193_1 VALUES (( 'UMWOR', '20193', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20204_1 VALUES (( 'UMWOR', '20204', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20213_1 VALUES (( 'UMWOR', '20213', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20221_1 VALUES (( 'UMWOR', '20221', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20214_1 VALUES (( 'UMWOR', '20214', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20223_1 VALUES (( 'UMWOR', '20223', 1 ))
    COMPRESS BASIC
)
/

COMMENT ON TABLE DLMRT_OWNER.IR_STUDENT_ENROL_CONFIRMED IS 'Data Lab confirmed student enrollment data.'
/
