DROP TABLE CSSTG_OWNER.PS_T_PERSON_CHK_ITEM CASCADE CONSTRAINTS
/

--
-- PS_T_PERSON_CHK_ITEM  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_T_PERSON_CHK_ITEM
(
  COMMON_ID         VARCHAR2(11 BYTE)           NOT NULL,
  SEQ_3C            INTEGER                     NOT NULL,
  CHECKLIST_SEQ     INTEGER                     NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 BYTE)            NOT NULL,
  CHKLST_ITEM_CD    VARCHAR2(6 BYTE)            NOT NULL,
  ITEM_STATUS       VARCHAR2(1 BYTE)            NOT NULL,
  STATUS_DT         DATE,
  STATUS_CHANGE_ID  VARCHAR2(11 BYTE)           NOT NULL,
  DUE_DT            DATE,
  CURRENCY_CD       VARCHAR2(3 BYTE)            NOT NULL,
  DUE_AMT           NUMBER(16,2)                NOT NULL,
  RESPONSIBLE_ID    VARCHAR2(11 BYTE)           NOT NULL,
  ASSOC_ID          VARCHAR2(11 BYTE)           NOT NULL,
  NAME              VARCHAR2(50 BYTE)           NOT NULL,
  COMM_KEY          VARCHAR2(8 BYTE)            NOT NULL,
  BATCH_SID         NUMBER(10)                  NOT NULL
)
COMPRESS BASIC
/