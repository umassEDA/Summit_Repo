DROP TABLE CSMRT_OWNER.PS_D_ETHNIC_GRP CASCADE CONSTRAINTS
/

--
-- PS_D_ETHNIC_GRP  (Table) 
--
CREATE TABLE CSMRT_OWNER.PS_D_ETHNIC_GRP
(
  ETHNIC_GRP_SID      INTEGER                   NOT NULL,
  SETID               VARCHAR2(5 CHAR)          NOT NULL,
  ETHNIC_GRP_CD       VARCHAR2(8 CHAR)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 CHAR)          NOT NULL,
  EFFDT               DATE,
  EFF_STAT_CD         VARCHAR2(1 CHAR)          NOT NULL,
  ETHNIC_GRP_SD       VARCHAR2(10 CHAR)         NOT NULL,
  ETHNIC_GRP_LD       VARCHAR2(50 CHAR)         NOT NULL,
  ETHNIC_GROUP        VARCHAR2(1 CHAR)          NOT NULL,
  ETHNIC_GROUP_SD     VARCHAR2(10 CHAR)         NOT NULL,
  ETHNIC_GROUP_LD     VARCHAR2(30 CHAR)         NOT NULL,
  ETHNIC_CTGRY_CD     VARCHAR2(1 CHAR)          NOT NULL,
  ETHNIC_CTGRY_SD     VARCHAR2(10 CHAR)         NOT NULL,
  ETHNIC_CTGRY_LD     VARCHAR2(30 CHAR)         NOT NULL,
  ETHNIC_GRP_FED_FLG  VARCHAR2(1 CHAR)          NOT NULL,
  ETHNIC_GRP_ST_FLG   VARCHAR2(1 CHAR)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 CHAR)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE
)
NOCOMPRESS
/


ALTER TABLE CSMRT_OWNER.PS_D_ETHNIC_GRP ADD (
  CONSTRAINT PK_PS_D_ETHNIC_GRP
  PRIMARY KEY
  (ETHNIC_GRP_SID)
  RELY
  DISABLE NOVALIDATE)
/
