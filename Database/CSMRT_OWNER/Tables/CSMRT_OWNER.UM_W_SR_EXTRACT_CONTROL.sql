DROP TABLE CSMRT_OWNER.UM_W_SR_EXTRACT_CONTROL CASCADE CONSTRAINTS
/

--
-- UM_W_SR_EXTRACT_CONTROL  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_W_SR_EXTRACT_CONTROL
(
  INSTITUTION_CD  VARCHAR2(5 BYTE)              NOT NULL,
  EXTRACT_TYPE    VARCHAR2(10 BYTE)             NOT NULL,
  TERM_CD         VARCHAR2(4 BYTE),
  LASTUPD_BY      VARCHAR2(11 BYTE)             DEFAULT 'UNKNOWN',
  LASTUPD_DTTM    DATE                          DEFAULT sysdate
)
COMPRESS BASIC
/
