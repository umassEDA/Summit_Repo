CREATE TABLE UM_W_RA_PREDICT_CONTROL
(
  INSTITUTION_CD   VARCHAR2(5 BYTE),
  ACAD_CAR_CD      VARCHAR2(5 BYTE),
  TERM_CD          VARCHAR2(4 BYTE),
  ACAD_PROG_CD     VARCHAR2(5 BYTE),
  ACAD_PLAN_CD     VARCHAR2(10 BYTE),
  ACAD_SPLAN_CD    VARCHAR2(10 BYTE),
  SCENARIO         VARCHAR2(30 BYTE),
  ACT_COMP_SCORE   NUMBER,
  SAT_MATH_SCORE   NUMBER,
  SAT_VERB_SCORE   NUMBER,
  SAT_TOTAL_SCORE  NUMBER,
  HS_GPA           NUMBER,
  LASTUPD_BY       VARCHAR2(11 BYTE),
  LASTUPD_DTTM     DATE
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
