DROP TABLE CSMRT_OWNER.UM_D_PERSON_ETHNICITY CASCADE CONSTRAINTS
/

--
-- UM_D_PERSON_ETHNICITY  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_D_PERSON_ETHNICITY
(
  PERSON_ID           VARCHAR2(11 CHAR)         NOT NULL,
  REG_REGION          VARCHAR2(5 CHAR)          NOT NULL,
  ETHNIC_GRP_CD       VARCHAR2(8 CHAR)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 CHAR)          NOT NULL,
  PERSON_SID          INTEGER                   NOT NULL,
  ETHNIC_GRP_SID      INTEGER                   NOT NULL,
  PRIMARY_FLAG        VARCHAR2(1 CHAR)          NOT NULL,
  HISP_LATINO_FLG     VARCHAR2(1 CHAR)          NOT NULL,
  IPEDS_FLG           VARCHAR2(1 CHAR)          NOT NULL,
  ETHNIC_PCT_NUMRATR  INTEGER                   NOT NULL,
  ETHNIC_PCT_DENMRTR  INTEGER                   NOT NULL,
  LASTUPDDTTM         DATE,
  LASTUPDOPRID        VARCHAR2(30 CHAR)         NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 CHAR)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_D_PERSON_ETHNICITY ADD (
  CONSTRAINT PK_UM_D_PERSON_ETHNICITY
  PRIMARY KEY
  (PERSON_ID, REG_REGION, ETHNIC_GRP_CD, SRC_SYS_ID)
  RELY
  DISABLE NOVALIDATE)
/
