DROP TABLE CSMRT_OWNER.UM_F_ADM_APPL_LST_SCHL CASCADE CONSTRAINTS
/

--
-- UM_F_ADM_APPL_LST_SCHL  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_F_ADM_APPL_LST_SCHL
(
  APPLCNT_SID          INTEGER                  NOT NULL,
  INSTITUTION_SID      INTEGER                  NOT NULL,
  EXT_ORG_SID          INTEGER                  NOT NULL,
  SRC_SYS_ID           VARCHAR2(5 BYTE)         NOT NULL,
  PERSON_ID            VARCHAR2(11 BYTE)        NOT NULL,
  INSTITUTION_CD       VARCHAR2(5 BYTE)         NOT NULL,
  EXT_ORG_ID           VARCHAR2(11 BYTE)        NOT NULL,
  EXT_DATA_NBR         INTEGER                  NOT NULL,
  EXT_ACAD_CAR_ID      VARCHAR2(4 BYTE)         NOT NULL,
  EXT_SUMM_TYPE_ID     VARCHAR2(4 BYTE)         NOT NULL,
  CLASS_RANK           INTEGER,
  CLASS_SIZE           INTEGER,
  CLASS_PERCENTILE     INTEGER,
  EXT_GPA              NUMBER,
  CONVERTED_GPA        NUMBER,
  UM_CUM_CREDIT        NUMBER,
  UM_CUM_GPA           NUMBER,
  UM_CUM_QP            NUMBER,
  UM_CUM_CREDIT_AGG    NUMBER,
  UM_CUM_GPA_AGG       NUMBER,
  UM_CUM_QP_AGG        NUMBER,
  UM_GPA_EXCLUDE_FLG   VARCHAR2(1 BYTE),
  UM_EXT_ORG_CR        NUMBER,
  UM_EXT_ORG_QP        NUMBER,
  UM_EXT_ORG_GPA       NUMBER,
  UM_EXT_ORG_CNV_CR    NUMBER,
  UM_EXT_ORG_CNV_GPA   NUMBER,
  UM_EXT_ORG_CNV_QP    NUMBER,
  UM_GPA_OVRD_FLG      VARCHAR2(1 BYTE),
  UM_1_OVRD_HSGPA_FLG  VARCHAR2(1 BYTE),
  UM_CONVERT_GPA       NUMBER,
  UM_EXT_OR_MTSC_GPA   NUMBER,
  MS_CONVERT_GPA       NUMBER,
  MAX_DATA_ROW         VARCHAR2(1 BYTE),
  DATA_ORIGIN          VARCHAR2(1 BYTE),
  CREATED_EW_DTTM      DATE,
  LASTUPD_EW_DTTM      DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_F_ADM_APPL_LST_SCHL ADD (
  CONSTRAINT PK_UM_F_ADM_APPL_LST_SCHL
  PRIMARY KEY
  (APPLCNT_SID, INSTITUTION_SID, EXT_ORG_SID, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
