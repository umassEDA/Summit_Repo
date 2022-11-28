DROP TABLE CSSTG_OWNER.PS_T_SRVC_IND_DATA CASCADE CONSTRAINTS
/

--
-- PS_T_SRVC_IND_DATA  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_T_SRVC_IND_DATA
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  SRVC_IND_DTTM       TIMESTAMP(6)              NOT NULL,
  OPRID               VARCHAR2(30 BYTE)         NOT NULL,
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  SRVC_IND_CD         VARCHAR2(3 BYTE)          NOT NULL,
  SRVC_IND_REASON     VARCHAR2(5 BYTE)          NOT NULL,
  SRVC_IND_ACT_TERM   VARCHAR2(4 BYTE)          NOT NULL,
  SRVC_IND_ACTIVE_DT  DATE,
  SCC_SI_END_TERM     VARCHAR2(4 BYTE)          NOT NULL,
  SCC_SI_END_DT       DATE,
  POS_SRVC_INDICATOR  VARCHAR2(9 BYTE)          NOT NULL,
  SRVC_IND_REFRNCE    VARCHAR2(30 BYTE)         NOT NULL,
  DEPTID              VARCHAR2(10 BYTE)         NOT NULL,
  POSITION_NBR        VARCHAR2(8 BYTE)          NOT NULL,
  CONTACT             VARCHAR2(30 BYTE)         NOT NULL,
  CONTACT_ID          VARCHAR2(15 BYTE)         NOT NULL,
  CURRENCY_CD         VARCHAR2(3 BYTE)          NOT NULL,
  AMOUNT              NUMBER(26,3)              NOT NULL,
  SEQ_3C              INTEGER                   NOT NULL,
  PLACED_METHOD       VARCHAR2(30 BYTE)         NOT NULL,
  PLACED_PERSON       VARCHAR2(30 BYTE)         NOT NULL,
  PLACED_PERSON_ID    VARCHAR2(11 BYTE)         NOT NULL,
  PLACED_PROCESS      VARCHAR2(8 BYTE)          NOT NULL,
  RELEASE_PROCESS     VARCHAR2(8 BYTE)          NOT NULL,
  COMM_COMMENTS       VARCHAR2(4000 BYTE),
  SRC_SCN             NUMBER
)
COMPRESS BASIC
/
