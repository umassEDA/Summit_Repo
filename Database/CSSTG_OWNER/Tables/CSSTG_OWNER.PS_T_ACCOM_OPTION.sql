DROP TABLE CSSTG_OWNER.PS_T_ACCOM_OPTION CASCADE CONSTRAINTS
/

--
-- PS_T_ACCOM_OPTION  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_T_ACCOM_OPTION
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  EMPL_RCD            INTEGER                   NOT NULL,
  ACCOMMODATION_ID    INTEGER                   NOT NULL,
  ACCOMMODATION_OPT   INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  ACCOMMODATION_TYPE  VARCHAR2(6 BYTE)          NOT NULL,
  CURRENCY_CD         VARCHAR2(3 BYTE)          NOT NULL,
  ACCOM_COST          NUMBER(18,3)              NOT NULL,
  EMPLOYER_SUGGESTED  VARCHAR2(1 BYTE)          NOT NULL,
  ACCOM_STATUS        VARCHAR2(1 BYTE)          NOT NULL,
  STATUS_DT           DATE                      NOT NULL,
  BATCH_SID           NUMBER(10)                NOT NULL,
  DESCRLONG           VARCHAR2(4000 BYTE),
  SRC_SCN             NUMBER
)
NOCOMPRESS
/
