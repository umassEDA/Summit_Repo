DROP TABLE CSMRT_OWNER.BB_ACTIVITY_UMBOS_AGG CASCADE CONSTRAINTS
/

--
-- BB_ACTIVITY_UMBOS_AGG  (Table) 
--
CREATE TABLE CSMRT_OWNER.BB_ACTIVITY_UMBOS_AGG
(
  INSTITUTION_CD    CHAR(5 BYTE),
  TERM_CD           VARCHAR2(3840 CHAR),
  CLASS_NUM         NVARCHAR2(250),
  STUDENT_ID        NVARCHAR2(256),
  TIMESTAMP         DATE,
  SESSION_COUNT     NUMBER,
  TOTAL_TIME_SPENT  NUMBER,
  ACTIVITY_COUNT    NUMBER
)
NOCOMPRESS
/
