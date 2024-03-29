DROP TABLE CSMRT_OWNER.UM_D_STDNT_ATTR_VAL CASCADE CONSTRAINTS
/

--
-- UM_D_STDNT_ATTR_VAL  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_D_STDNT_ATTR_VAL
(
  PERSON_ID                   VARCHAR2(11 BYTE) NOT NULL,
  ACAD_CAR_CD                 VARCHAR2(4 BYTE)  NOT NULL,
  STDNT_CAR_NUM               INTEGER           NOT NULL,
  STDNT_ATTR                  VARCHAR2(4 BYTE)  NOT NULL,
  STDNT_ATTR_VALUE            VARCHAR2(10 BYTE) NOT NULL,
  SRC_SYS_ID                  VARCHAR2(5 BYTE)  NOT NULL,
  INSTITUTION_CD              VARCHAR2(5 BYTE)  NOT NULL,
  EFFDT                       DATE,
  EFFSEQ                      INTEGER,
  INSTITUTION_SID             INTEGER           NOT NULL,
  ACAD_CAR_SID                INTEGER           NOT NULL,
  PERSON_SID                  INTEGER           NOT NULL,
  STDNT_ATTR_SD               VARCHAR2(10 BYTE) NOT NULL,
  STDNT_ATTR_LD               VARCHAR2(30 BYTE) NOT NULL,
  STDNT_ATTR_VAL_SD           VARCHAR2(10 BYTE) NOT NULL,
  STDNT_ATTR_VAL_LD           VARCHAR2(30 BYTE) NOT NULL,
  UMBOS_UGRD_SECOND_DEGR_FLG  VARCHAR2(1 BYTE)  NOT NULL,
  ATTR_ORDER                  INTEGER           NOT NULL,
  DATA_ORIGIN                 VARCHAR2(1 BYTE)  NOT NULL,
  CREATED_EW_DTTM             DATE,
  LASTUPD_EW_DTTM             DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_D_STDNT_ATTR_VAL ADD (
  CONSTRAINT PK_UM_D_STDNT_ATTR_VAL
  PRIMARY KEY
  (PERSON_ID, ACAD_CAR_CD, STDNT_CAR_NUM, STDNT_ATTR, STDNT_ATTR_VALUE, SRC_SYS_ID)
  RELY
  DISABLE NOVALIDATE)
/
