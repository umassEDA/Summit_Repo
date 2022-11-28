DROP TABLE CSSTG_OWNER.PS_S_OPRDEFN_OLD CASCADE CONSTRAINTS
/

--
-- PS_S_OPRDEFN_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_S_OPRDEFN_OLD
(
  OPRID              VARCHAR2(30 BYTE)          NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 BYTE)           NOT NULL,
  VERSION            INTEGER                    NOT NULL,
  OPRDEFNDESC        VARCHAR2(30 BYTE)          NOT NULL,
  EMPLID             VARCHAR2(11 BYTE)          NOT NULL,
  EMAILID            VARCHAR2(70 BYTE)          NOT NULL,
  OPRCLASS           VARCHAR2(30 BYTE)          NOT NULL,
  ROWSECCLASS        VARCHAR2(30 BYTE)          NOT NULL,
  OPERPSWD           VARCHAR2(32 BYTE)          NOT NULL,
  ENCRYPTED          INTEGER                    NOT NULL,
  SYMBOLICID         VARCHAR2(8 BYTE)           NOT NULL,
  LANGUAGE_CD        VARCHAR2(3 BYTE)           NOT NULL,
  MULTILANG          INTEGER                    NOT NULL,
  CURRENCY_CD        VARCHAR2(3 BYTE)           NOT NULL,
  LASTPSWDCHANGE     DATE                       NOT NULL,
  ACCTLOCK           INTEGER                    NOT NULL,
  PRCSPRFLCLS        VARCHAR2(30 BYTE)          NOT NULL,
  DEFAULTNAVHP       VARCHAR2(30 BYTE)          NOT NULL,
  FAILEDLOGINS       INTEGER                    NOT NULL,
  EXPENT             INTEGER                    NOT NULL,
  OPRTYPE            INTEGER                    NOT NULL,
  USERIDALIAS        VARCHAR2(70 BYTE)          NOT NULL,
  LASTSIGNONDTTM     DATE,
  LASTUPDDTTM        DATE,
  LASTUPDOPRID       VARCHAR2(30 BYTE)          NOT NULL,
  PTALLOWSWITCHUSER  INTEGER                    NOT NULL,
  LOAD_ERROR         VARCHAR2(1 BYTE)           NOT NULL,
  DATA_ORIGIN        VARCHAR2(1 BYTE)           NOT NULL,
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE,
  BATCH_SID          NUMBER(10)                 NOT NULL
)
COMPRESS BASIC
/
