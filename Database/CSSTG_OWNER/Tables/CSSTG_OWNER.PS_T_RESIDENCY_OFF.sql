DROP TABLE CSSTG_OWNER.PS_T_RESIDENCY_OFF CASCADE CONSTRAINTS
/

--
-- PS_T_RESIDENCY_OFF  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_T_RESIDENCY_OFF
(
  EMPLID             VARCHAR2(11 BYTE)          NOT NULL,
  ACAD_CAREER        VARCHAR2(4 BYTE)           NOT NULL,
  INSTITUTION        VARCHAR2(5 BYTE)           NOT NULL,
  EFFECTIVE_TERM     VARCHAR2(4 BYTE)           NOT NULL,
  RESIDENCY_DT       DATE,
  RESIDENCY          VARCHAR2(5 BYTE)           NOT NULL,
  ADMISSION_RES      VARCHAR2(5 BYTE)           NOT NULL,
  FIN_AID_FED_RES    VARCHAR2(5 BYTE)           NOT NULL,
  FIN_AID_ST_RES     VARCHAR2(5 BYTE)           NOT NULL,
  TUITION_RES        VARCHAR2(5 BYTE)           NOT NULL,
  ADMISSION_EXCPT    VARCHAR2(5 BYTE)           NOT NULL,
  FIN_AID_FED_EXCPT  VARCHAR2(5 BYTE)           NOT NULL,
  FIN_AID_ST_EXCPT   VARCHAR2(5 BYTE)           NOT NULL,
  TUITION_EXCPT      VARCHAR2(5 BYTE)           NOT NULL,
  SCC_DISTRICT       VARCHAR2(30 BYTE)          NOT NULL,
  CITY               VARCHAR2(30 BYTE)          NOT NULL,
  COUNTY             VARCHAR2(30 BYTE)          NOT NULL,
  STATE              VARCHAR2(6 BYTE)           NOT NULL,
  COUNTRY            VARCHAR2(3 BYTE)           NOT NULL,
  POSTAL             VARCHAR2(12 BYTE)          NOT NULL,
  COMMENTS           VARCHAR2(4000 BYTE),
  SRC_SCN            NUMBER
)
NOCOMPRESS
/
