DROP TABLE CSMRT_OWNER.UM_F_STDNT CASCADE CONSTRAINTS
/

--
-- UM_F_STDNT  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_F_STDNT
(
  INSTITUTION_CD   VARCHAR2(5 BYTE)             NOT NULL,
  ACAD_CAR_CD      VARCHAR2(4 BYTE)             NOT NULL,
  PERSON_ID        VARCHAR2(11 BYTE)            NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  INSTITUTION_SID  INTEGER                      NOT NULL,
  ACAD_CAR_SID     INTEGER                      NOT NULL,
  PERSON_SID       INTEGER                      NOT NULL,
  ADM_CNT          INTEGER                      NOT NULL,
  SR_CNT           INTEGER                      NOT NULL,
  PRSPCT_CNT       INTEGER                      NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE),
  DATA_ORIGIN      VARCHAR2(1 BYTE),
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        INTEGER
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_F_STDNT ADD (
  CONSTRAINT PK_UM_F_STDNT
  PRIMARY KEY
  (INSTITUTION_CD, ACAD_CAR_CD, PERSON_ID, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
