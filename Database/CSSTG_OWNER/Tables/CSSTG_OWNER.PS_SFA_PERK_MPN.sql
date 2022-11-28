DROP TABLE CSSTG_OWNER.PS_SFA_PERK_MPN CASCADE CONSTRAINTS
/

--
-- PS_SFA_PERK_MPN  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_SFA_PERK_MPN
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  SFA_MPN_SEQ         INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  SFA_MPN_CREATE_DT   DATE,
  AID_YEAR            VARCHAR2(4 BYTE)          NOT NULL,
  SFA_MPN_MULTI_IND   VARCHAR2(1 BYTE)          NOT NULL,
  SFA_EMPN_IND        VARCHAR2(1 BYTE)          NOT NULL,
  SFA_MPN_CONSENT_DT  DATE,
  SFA_MPN_SIGN_DT     DATE,
  SFA_MPN_SIGN_TIME   DATE,
  SFA_MPN_RECEIVE_DT  DATE,
  SFA_MPN_CLOSE_DT    DATE,
  SFA_MPN_EXPIRE_DT   DATE,
  SFA_MPN_CANCEL_DT   DATE,
  FORM_NAME           VARCHAR2(18 BYTE)         NOT NULL,
  SFA_MPN_LAST_NAME   VARCHAR2(30 BYTE)         NOT NULL,
  SFA_MPN_FIRST_NAME  VARCHAR2(30 BYTE)         NOT NULL,
  SFA_MPN_MIDDLE_INT  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_MPN_ADDRESS1    VARCHAR2(55 BYTE)         NOT NULL,
  SFA_MPN_ADDRESS2    VARCHAR2(55 BYTE)         NOT NULL,
  SFA_MPN_CITY        VARCHAR2(30 BYTE)         NOT NULL,
  SFA_MPN_STATE_PROV  VARCHAR2(6 BYTE)          NOT NULL,
  SFA_MPN_POSTAL_CD   VARCHAR2(12 BYTE)         NOT NULL,
  SFA_MPN_SSN         VARCHAR2(9 BYTE)          NOT NULL,
  SFA_MPN_BIRTH_DT    DATE,
  SFA_MPN_PHONE_NBR   VARCHAR2(24 BYTE)         NOT NULL,
  SFA_MPN_DRV_LIC_ST  VARCHAR2(6 BYTE)          NOT NULL,
  SFA_MPN_DRV_LIC     VARCHAR2(20 BYTE)         NOT NULL,
  SFA_MPN_SCHL_NAME   VARCHAR2(50 BYTE)         NOT NULL,
  SFA_MPN_SCHL_ADDR1  VARCHAR2(55 BYTE)         NOT NULL,
  SFA_MPN_SCHL_ADDR2  VARCHAR2(55 BYTE)         NOT NULL,
  SFA_MPN_SCHL_CITY   VARCHAR2(30 BYTE)         NOT NULL,
  SFA_MPN_SCHL_STATE  VARCHAR2(6 BYTE)          NOT NULL,
  SFA_MPN_SCHL_ZIPCD  VARCHAR2(12 BYTE)         NOT NULL,
  SFA_MPN_INT_RATE    NUMBER(5,3)               NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/