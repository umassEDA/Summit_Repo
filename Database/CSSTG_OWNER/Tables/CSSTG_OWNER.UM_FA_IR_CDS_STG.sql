DROP TABLE CSSTG_OWNER.UM_FA_IR_CDS_STG CASCADE CONSTRAINTS
/

--
-- UM_FA_IR_CDS_STG  (Table) 
--
CREATE TABLE CSSTG_OWNER.UM_FA_IR_CDS_STG
(
  INSTITUTION               VARCHAR2(5 BYTE),
  TERM                      VARCHAR2(4 BYTE),
  EMPLID                    VARCHAR2(8 BYTE),
  CAREER                    VARCHAR2(4 BYTE),
  RESIDENCY_CD              VARCHAR2(5 BYTE),
  ACAD_LOAD_CD              VARCHAR2(4 BYTE),
  FIRST_FULL_FRESHMAN_FLAG  VARCHAR2(1 BYTE),
  CREATED_EW_DTTM           DATE,
  LASTUPD_EW_DTTM           DATE
)
NOCOMPRESS
/


ALTER TABLE CSSTG_OWNER.UM_FA_IR_CDS_STG ADD (
  CONSTRAINT PK_UM_FA_IR_CDS_STG
  PRIMARY KEY
  (INSTITUTION, TERM, EMPLID, CAREER)
  RELY
  ENABLE VALIDATE)
/
