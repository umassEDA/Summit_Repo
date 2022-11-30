DROP TABLE DLMRT_OWNER.IR_CITIZENSHIP_DTL_CONFIRMED CASCADE CONSTRAINTS
/

--
-- IR_CITIZENSHIP_DTL_CONFIRMED  (Table) 
--
CREATE TABLE DLMRT_OWNER.IR_CITIZENSHIP_DTL_CONFIRMED
(
  INSTITUTION          VARCHAR2(5 BYTE),
  CAMPUS               VARCHAR2(30 BYTE),
  CENSUS_PERIOD        VARCHAR2(5 BYTE),
  CENSUS_PERIOD_DESCR  VARCHAR2(50 BYTE),
  CENSUS_SEQ           INTEGER,
  PERSON_ID            VARCHAR2(15 BYTE),
  COUNTRY_2CHAR        VARCHAR2(2 BYTE),
  COUNTRY_DESCR        VARCHAR2(50 BYTE),
  CITIZENSHIP_CODE     VARCHAR2(1 BYTE),
  CITIZENSHIP_STATUS   VARCHAR2(18 BYTE),
  INSERT_TIME          DATE
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

COMMENT ON TABLE DLMRT_OWNER.IR_CITIZENSHIP_DTL_CONFIRMED IS 'Data Lab confirmed person data.'
/