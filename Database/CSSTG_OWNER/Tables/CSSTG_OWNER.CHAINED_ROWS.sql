DROP TABLE CSSTG_OWNER.CHAINED_ROWS CASCADE CONSTRAINTS
/

--
-- CHAINED_ROWS  (Table) 
--
CREATE TABLE CSSTG_OWNER.CHAINED_ROWS
(
  OWNER_NAME         VARCHAR2(30 BYTE),
  TABLE_NAME         VARCHAR2(30 BYTE),
  CLUSTER_NAME       VARCHAR2(30 BYTE),
  PARTITION_NAME     VARCHAR2(30 BYTE),
  SUBPARTITION_NAME  VARCHAR2(30 BYTE),
  HEAD_ROWID         ROWID,
  ANALYZE_TIMESTAMP  DATE
)
NOCOMPRESS
/
