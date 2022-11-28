DROP TABLE CSSTG_OWNER.PS_NAMES CASCADE CONSTRAINTS
/

--
-- PS_NAMES  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_NAMES
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  NAME_TYPE           VARCHAR2(3 BYTE)          NOT NULL,
  EFFDT               DATE                      NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  EFF_STATUS          VARCHAR2(1 BYTE)          NOT NULL,
  COUNTRY_NM_FORMAT   VARCHAR2(3 BYTE)          NOT NULL,
  NAME                VARCHAR2(50 BYTE)         NOT NULL,
  NAME_INITIALS       VARCHAR2(6 BYTE)          NOT NULL,
  NAME_PREFIX         VARCHAR2(4 BYTE)          NOT NULL,
  NAME_SUFFIX         VARCHAR2(15 BYTE)         NOT NULL,
  NAME_ROYAL_PREFIX   VARCHAR2(15 BYTE)         NOT NULL,
  NAME_ROYAL_SUFFIX   VARCHAR2(15 BYTE)         NOT NULL,
  NAME_TITLE          VARCHAR2(30 BYTE)         NOT NULL,
  LAST_NAME_SRCH      VARCHAR2(30 BYTE)         NOT NULL,
  FIRST_NAME_SRCH     VARCHAR2(30 BYTE)         NOT NULL,
  LAST_NAME           VARCHAR2(30 BYTE)         NOT NULL,
  FIRST_NAME          VARCHAR2(30 BYTE)         NOT NULL,
  MIDDLE_NAME         VARCHAR2(30 BYTE)         NOT NULL,
  SECOND_LAST_NAME    VARCHAR2(30 BYTE)         NOT NULL,
  SECOND_LAST_SRCH    VARCHAR2(30 BYTE)         NOT NULL,
  NAME_AC             VARCHAR2(50 BYTE)         NOT NULL,
  PREF_FIRST_NAME     VARCHAR2(30 BYTE)         NOT NULL,
  PARTNER_LAST_NAME   VARCHAR2(30 BYTE)         NOT NULL,
  PARTNER_ROY_PREFIX  VARCHAR2(15 BYTE)         NOT NULL,
  LAST_NAME_PREF_NLD  VARCHAR2(1 BYTE)          NOT NULL,
  NAME_DISPLAY        VARCHAR2(50 BYTE)         NOT NULL,
  NAME_FORMAL         VARCHAR2(60 BYTE)         NOT NULL,
  NAME_DISPLAY_SRCH   VARCHAR2(50 BYTE)         NOT NULL,
  LASTUPDDTTM         DATE,
  LASTUPDOPRID        VARCHAR2(30 BYTE)         NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
