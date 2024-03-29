DROP TABLE CSSTG_OWNER.PS_EXTRACUR_ACTVTY_OLD CASCADE CONSTRAINTS
/

--
-- PS_EXTRACUR_ACTVTY_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_EXTRACUR_ACTVTY_OLD
(
  EMPLID             VARCHAR2(11 BYTE)          NOT NULL,
  INTERNAL_EXTERNAL  VARCHAR2(1 BYTE)           NOT NULL,
  EXTRA_ACTIVITY     VARCHAR2(6 BYTE)           NOT NULL,
  DESCR              VARCHAR2(30 BYTE)          NOT NULL,
  START_DT           DATE,
  INSTITUTION        VARCHAR2(5 BYTE)           NOT NULL,
  ACAD_CAREER        VARCHAR2(4 BYTE)           NOT NULL,
  STRM               VARCHAR2(4 BYTE)           NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 BYTE)           NOT NULL,
  EXTRA_ACTVTY_TYPE  VARCHAR2(4 BYTE)           NOT NULL,
  OFFICE_HELD        VARCHAR2(4 BYTE)           NOT NULL,
  END_DT             DATE,
  INTEREST_FLAG      VARCHAR2(1 BYTE)           NOT NULL,
  YEARS_VARSITY      INTEGER                    NOT NULL,
  NINTH_GRADE        VARCHAR2(1 BYTE)           NOT NULL,
  TENTH_GRADE        VARCHAR2(1 BYTE)           NOT NULL,
  ELEVENTH_GRADE     VARCHAR2(1 BYTE)           NOT NULL,
  TWELFTH_GRADE      VARCHAR2(1 BYTE)           NOT NULL,
  POSTSECONDARY      VARCHAR2(1 BYTE)           NOT NULL,
  TIME_UNIT_DEFINE1  VARCHAR2(2 BYTE)           NOT NULL,
  TIME_UNIT_DEFINE2  VARCHAR2(2 BYTE)           NOT NULL,
  TIME_UNIT1         NUMBER(7,2)                NOT NULL,
  TIME_UNIT2         NUMBER(7,2)                NOT NULL,
  LOAD_ERROR         VARCHAR2(1 BYTE)           NOT NULL,
  DATA_ORIGIN        VARCHAR2(1 BYTE)           NOT NULL,
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE,
  BATCH_SID          NUMBER(10)                 NOT NULL,
  DESCRLONG          CLOB
)
LOB (DESCRLONG) STORE AS BASICFILE (
  TABLESPACE  CSSTG_DATA1
  ENABLE      STORAGE IN ROW
  CHUNK       16384
  RETENTION
  STORAGE    (
              INITIAL          1M
              NEXT             1M
              MINEXTENTS       1
              MAXEXTENTS       UNLIMITED
              PCTINCREASE      0
              BUFFER_POOL      DEFAULT
             ))
COMPRESS BASIC
/
