DROP TABLE CSSTG_OWNER.PS_T_PERSON CASCADE CONSTRAINTS
/

--
-- PS_T_PERSON  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_T_PERSON
(
  EMPLID             VARCHAR2(11 BYTE)          NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 BYTE)           NOT NULL,
  BIRTHDATE          DATE,
  BIRTHPLACE         VARCHAR2(30 BYTE)          NOT NULL,
  BIRTHCOUNTRY       VARCHAR2(3 BYTE)           NOT NULL,
  BIRTHSTATE         VARCHAR2(6 BYTE)           NOT NULL,
  DT_OF_DEATH        DATE,
  LAST_CHILD_UPDDTM  DATE,
  BATCH_SID          NUMBER(10)                 NOT NULL
)
COMPRESS BASIC
/
