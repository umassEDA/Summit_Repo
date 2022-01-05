CREATE TABLE PS_D_ACAD_STNDNG
(
  ACAD_STNDNG_SID     NUMBER(10),
  INSTITUTION_CD      VARCHAR2(5 CHAR),
  ACAD_CAR_CD         VARCHAR2(4 CHAR),
  ACAD_STNDNG_ACN_CD  VARCHAR2(4 CHAR),
  SRC_SYS_ID          VARCHAR2(5 CHAR),
  EFFDT               DATE,
  ACAD_STNDNG_ACN_SD  VARCHAR2(10 CHAR),
  ACAD_STNDNG_ACN_LD  VARCHAR2(30 CHAR),
  ACAD_STNDNG_ACN_FD  VARCHAR2(50 CHAR),
  STNDNG_STAT_CD      VARCHAR2(4 CHAR),
  STNDNG_STAT_SD      VARCHAR2(10 CHAR),
  STNDNG_STAT_LD      VARCHAR2(30 CHAR),
  DATA_ORIGIN         VARCHAR2(1 CHAR),
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;