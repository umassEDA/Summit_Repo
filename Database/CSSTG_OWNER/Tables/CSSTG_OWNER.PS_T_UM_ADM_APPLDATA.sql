DROP TABLE CSSTG_OWNER.PS_T_UM_ADM_APPLDATA CASCADE CONSTRAINTS
/

--
-- PS_T_UM_ADM_APPLDATA  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_T_UM_ADM_APPLDATA
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  ACAD_CAREER         VARCHAR2(4 BYTE)          NOT NULL,
  STDNT_CAR_NBR       INTEGER                   NOT NULL,
  ADM_APPL_NBR        VARCHAR2(8 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  UM_ACAD_PROG1       VARCHAR2(5 BYTE)          NOT NULL,
  UM_ACAD_PLAN1       VARCHAR2(10 BYTE)         NOT NULL,
  UM_ACAD_SUB_PLAN1   VARCHAR2(10 BYTE)         NOT NULL,
  UM_MANUAL_COMPLETE  VARCHAR2(1 BYTE)          NOT NULL,
  UM_COMPLETED_DT     DATE,
  UM_CA_TESTING_PLAN  VARCHAR2(200 BYTE)        NOT NULL,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
