DROP TABLE CSSTG_OWNER.UM_STAGE_JOBS CASCADE CONSTRAINTS
/

--
-- UM_STAGE_JOBS  (Table) 
--
CREATE TABLE CSSTG_OWNER.UM_STAGE_JOBS
(
  TABLE_NAME    VARCHAR2(50 BYTE)               NOT NULL,
  DELETE_FLG    VARCHAR2(1 BYTE),
  TABLE_STATUS  VARCHAR2(10 BYTE),
  START_DT      DATE,
  END_DT        DATE,
  OLD_MAX_SCN   NUMBER                          DEFAULT 0,
  NEW_MAX_SCN   NUMBER
)
COMPRESS BASIC
/
