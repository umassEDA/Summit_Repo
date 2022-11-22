DROP TABLE CSMRT_OWNER.BB_ACTIVITY_UMLOW_DAY_AGG CASCADE CONSTRAINTS
/

--
-- BB_ACTIVITY_UMLOW_DAY_AGG  (Table) 
--
CREATE TABLE CSMRT_OWNER.BB_ACTIVITY_UMLOW_DAY_AGG
(
  INSTITUTION_CD    CHAR(9 BYTE),
  TERM_CD           NVARCHAR2(4),
  CLASS_NUM         NVARCHAR2(5),
  STUDENT_ID        NVARCHAR2(256),
  TIMESTAMP         DATE,
  SESSION_COUNT     NUMBER,
  TOTAL_TIME_SPENT  NUMBER,
  ACTIVITY_COUNT    NUMBER
)
NOCOMPRESS
/