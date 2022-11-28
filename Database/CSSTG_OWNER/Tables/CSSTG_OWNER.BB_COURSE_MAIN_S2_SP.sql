DROP TABLE CSSTG_OWNER.BB_COURSE_MAIN_S2_SP CASCADE CONSTRAINTS
/

--
-- BB_COURSE_MAIN_S2_SP  (Table) 
--
CREATE TABLE CSSTG_OWNER.BB_COURSE_MAIN_S2_SP
(
  BB_SOURCE             VARCHAR2(10 CHAR)       NOT NULL,
  PK1                   INTEGER                 NOT NULL,
  BUTTONSTYLES_PK1      INTEGER,
  CARTRIDGE_PK1         INTEGER,
  CLASSIFICATIONS_PK1   INTEGER,
  DATA_SRC_PK1          INTEGER,
  SOS_ID_PK2            INTEGER,
  DTCREATED             DATE,
  DTMODIFIED            DATE,
  COURSE_NAME           NVARCHAR2(333),
  COURSE_ID             VARCHAR2(100 CHAR),
  LOWER_COURSE_ID       VARCHAR2(100 CHAR),
  ROW_STATUS            NUMBER(1),
  BATCH_UID             NVARCHAR2(256),
  ENROLL_OPTION         CHAR(1 CHAR),
  DURATION              CHAR(1 CHAR),
  PACE                  CHAR(1 CHAR),
  SERVICE_LEVEL         CHAR(1 CHAR),
  ABS_LIMIT             NUMBER,
  SOFT_LIMIT            NUMBER,
  UPLOAD_LIMIT          NUMBER,
  START_DATE            DATE,
  END_DATE              DATE,
  ENROLL_START_DATE     DATE,
  ENROLL_END_DATE       DATE,
  DAYS_OF_USE           NUMBER(6),
  FEE                   NUMBER(11,2),
  ENROLL_ACCESS_CODE    NVARCHAR2(50),
  BANNER_URL            NVARCHAR2(255),
  INSTITUTION_NAME      NVARCHAR2(255),
  REG_LEVEL_IND         CHAR(1 CHAR),
  NAVIGATION_STYLE      VARCHAR2(20 CHAR),
  TEXTCOLOR             VARCHAR2(20 CHAR),
  BACKGROUND_COLOR      VARCHAR2(20 CHAR),
  COLLAPSIBLE_IND       CHAR(1 CHAR),
  ALLOW_GUEST_IND       CHAR(1 CHAR),
  CATALOG_IND           CHAR(1 CHAR),
  LOCKOUT_IND           CHAR(1 CHAR),
  DESC_PAGE_IND         CHAR(1 CHAR),
  AVAILABLE_IND         CHAR(1 CHAR),
  ALLOW_OBSERVER_IND    CHAR(1 CHAR),
  DEFAULT_CONTENT_VIEW  CHAR(1 CHAR),
  LOCALE                VARCHAR2(20 CHAR),
  IS_LOCALE_ENFORCED    CHAR(1 CHAR),
  ASMT_UPGRADE_VERSION  NUMBER,
  ASMT_UPGRADE_FLAGS    NUMBER,
  HONOR_TERM_AVAIL_IND  CHAR(1 CHAR),
  COURSE_THEME_PK1      INTEGER,
  IMPORT_TASK_PK1       INTEGER,
  UUID                  NVARCHAR2(32),
  ULTRA_STATUS          CHAR(1 CHAR),
  COURSE_VIEW_OPTION    CHAR(1 CHAR),
  IS_CLOSED_IND         CHAR(1 CHAR),
  CONVERT_TASK_PK1      INTEGER,
  BANNER_ALT            NVARCHAR2(255),
  COPY_FROM_UUID        NVARCHAR2(32),
  DELETE_FLAG           VARCHAR2(1 CHAR),
  INSERT_TIME           DATE,
  UPDATE_TIME           DATE
)
NOCOMPRESS
/