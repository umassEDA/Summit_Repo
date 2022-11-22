DROP TABLE CSMRT_OWNER.BB_ACTIVITY_UMDAR_AGG CASCADE CONSTRAINTS
/

--
-- BB_ACTIVITY_UMDAR_AGG  (Table) 
--
CREATE TABLE CSMRT_OWNER.BB_ACTIVITY_UMDAR_AGG
(
  INSTITUTION_CD    CHAR(5 BYTE),
  TERM_CD           VARCHAR2(3825 BYTE),
  CLASS_NUM         NVARCHAR2(250),
  STUDENT_ID        NVARCHAR2(256),
  TIMESTAMP         DATE,
  SESSION_COUNT     NUMBER,
  TOTAL_TIME_SPENT  NUMBER,
  ACTIVITY_COUNT    NUMBER
)
NOCOMPRESS
/
