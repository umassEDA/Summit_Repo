DROP TABLE DLMRT_OWNER.IR_STUDENT_ENROL_PRELIM CASCADE CONSTRAINTS
/

--
-- IR_STUDENT_ENROL_PRELIM  (Table) 
--
CREATE TABLE DLMRT_OWNER.IR_STUDENT_ENROL_PRELIM
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
  HEADCOUNT                        INTEGER      DEFAULT 1,
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
  UGRD_GRAD                        VARCHAR2(50 BYTE) GENERATED ALWAYS AS (CASE "CAREER_LEVEL_CODE" WHEN 'UGRD' THEN 'Undergraduate' ELSE 'Graduate' END),
  DEG_SEEKING_STATUS               VARCHAR2(50 BYTE) GENERATED ALWAYS AS (CASE "PROGRAM_TYPE" WHEN 'Non-Degree' THEN 'Non-Degree Seeking' ELSE 'Degree Seeking' END)
)
COMPRESS BASIC
PARTITION BY LIST (INSTITUTION, CENSUS_PERIOD, CENSUS_SEQ)
(  
  PARTITION UMAMH_PPPPP_1 VALUES (( 'UMAMH', 'PPPPP', 1 ))
    COMPRESS BASIC,  
  PARTITION UMLOW_20174_1 VALUES (( 'UMLOW', '20174', 1 ))
    COMPRESS BASIC,  
  PARTITION UMLOW_20181_1 VALUES (( 'UMLOW', '20181', 1 ))
    COMPRESS BASIC,  
  PARTITION UMLOW_20182_1 VALUES (( 'UMLOW', '20182', 1 ))
    COMPRESS BASIC,  
  PARTITION UMLOW_20183_1 VALUES (( 'UMLOW', '20183', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20174_1 VALUES (( 'UMAMH', '20174', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20181_1 VALUES (( 'UMAMH', '20181', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20182_1 VALUES (( 'UMAMH', '20182', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20183_1 VALUES (( 'UMAMH', '20183', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20174_1 VALUES (( 'UMBOS', '20174', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20181_1 VALUES (( 'UMBOS', '20181', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20182_1 VALUES (( 'UMBOS', '20182', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20183_1 VALUES (( 'UMBOS', '20183', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20184_1 VALUES (( 'UMBOS', '20184', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20191_1 VALUES (( 'UMBOS', '20191', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20192_1 VALUES (( 'UMBOS', '20192', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20193_1 VALUES (( 'UMBOS', '20193', 1 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20174_2 VALUES (( 'UMDAR', '20174', 2 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20181_1 VALUES (( 'UMDAR', '20181', 1 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20182_2 VALUES (( 'UMDAR', '20182', 2 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20183_1 VALUES (( 'UMDAR', '20183', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20181_1 VALUES (( 'UMWOR', '20181', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20194_1 VALUES (( 'UMBOS', '20194', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20201_1 VALUES (( 'UMBOS', '20201', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20174_1 VALUES (( 'UMWOR', '20174', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20183_1 VALUES (( 'UMWOR', '20183', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20204_1 VALUES (( 'UMBOS', '20204', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20211_1 VALUES (( 'UMBOS', '20211', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20194_1 VALUES (( 'UMWOR', '20194', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20201_1 VALUES (( 'UMWOR', '20201', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20203_1 VALUES (( 'UMWOR', '20203', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20211_1 VALUES (( 'UMWOR', '20211', 1 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20194_2 VALUES (( 'UMDAR', '20194', 2 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20201_1 VALUES (( 'UMDAR', '20201', 1 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20202_2 VALUES (( 'UMDAR', '20202', 2 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20203_1 VALUES (( 'UMDAR', '20203', 1 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20204_2 VALUES (( 'UMDAR', '20204', 2 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20211_1 VALUES (( 'UMDAR', '20211', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20202_1 VALUES (( 'UMBOS', '20202', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20203_1 VALUES (( 'UMBOS', '20203', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20201_1 VALUES (( 'UMAMH', '20201', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20202_1 VALUES (( 'UMAMH', '20202', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20203_1 VALUES (( 'UMAMH', '20203', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20204_1 VALUES (( 'UMAMH', '20204', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20211_1 VALUES (( 'UMAMH', '20211', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20212_1 VALUES (( 'UMAMH', '20212', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20213_1 VALUES (( 'UMAMH', '20213', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20191_1 VALUES (( 'UMAMH', '20191', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20192_1 VALUES (( 'UMAMH', '20192', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20193_1 VALUES (( 'UMAMH', '20193', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20194_1 VALUES (( 'UMAMH', '20194', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20184_1 VALUES (( 'UMAMH', '20184', 1 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20184_2 VALUES (( 'UMDAR', '20184', 2 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20192_2 VALUES (( 'UMDAR', '20192', 2 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20191_1 VALUES (( 'UMDAR', '20191', 1 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20193_1 VALUES (( 'UMDAR', '20193', 1 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20212_2 VALUES (( 'UMDAR', '20212', 2 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20213_1 VALUES (( 'UMDAR', '20213', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20184_1 VALUES (( 'UMWOR', '20184', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20191_1 VALUES (( 'UMWOR', '20191', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20193_1 VALUES (( 'UMWOR', '20193', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20204_1 VALUES (( 'UMWOR', '20204', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20212_1 VALUES (( 'UMBOS', '20212', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20214_1 VALUES (( 'UMAMH', '20214', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20221_1 VALUES (( 'UMAMH', '20221', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20213_1 VALUES (( 'UMWOR', '20213', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20221_1 VALUES (( 'UMWOR', '20221', 1 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20214_2 VALUES (( 'UMDAR', '20214', 2 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20221_1 VALUES (( 'UMDAR', '20221', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20214_1 VALUES (( 'UMBOS', '20214', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20221_1 VALUES (( 'UMBOS', '20221', 1 ))
    COMPRESS BASIC,  
  PARTITION UMBOS_20213_1 VALUES (( 'UMBOS', '20213', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20214_1 VALUES (( 'UMWOR', '20214', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20222_1 VALUES (( 'UMAMH', '20222', 1 ))
    COMPRESS BASIC,  
  PARTITION UMAMH_20223_1 VALUES (( 'UMAMH', '20223', 1 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20222_2 VALUES (( 'UMDAR', '20222', 2 ))
    COMPRESS BASIC,  
  PARTITION UMDAR_20223_1 VALUES (( 'UMDAR', '20223', 1 ))
    COMPRESS BASIC,  
  PARTITION UMLOW_20211_1 VALUES (( 'UMLOW', '20211', 1 ))
    COMPRESS BASIC,  
  PARTITION UMLOW_20214_1 VALUES (( 'UMLOW', '20214', 1 ))
    COMPRESS BASIC,  
  PARTITION UMWOR_20223_1 VALUES (( 'UMWOR', '20223', 1 ))
    COMPRESS BASIC,  
  PARTITION UMLOW_20212_1 VALUES (( 'UMLOW', '20212', 1 ))
    COMPRESS BASIC,  
  PARTITION UMLOW_20213_1 VALUES (( 'UMLOW', '20213', 1 ))
    COMPRESS BASIC,  
  PARTITION UMLOW_20221_1 VALUES (( 'UMLOW', '20221', 1 ))
    COMPRESS BASIC,  
  PARTITION UMLOW_20222_1 VALUES (( 'UMLOW', '20222', 1 ))
    COMPRESS BASIC,  
  PARTITION UMLOW_20223_1 VALUES (( 'UMLOW', '20223', 1 ))
    COMPRESS BASIC
)
/

COMMENT ON TABLE DLMRT_OWNER.IR_STUDENT_ENROL_PRELIM IS 'Data Lab preliminary student enrollment data.'
/
