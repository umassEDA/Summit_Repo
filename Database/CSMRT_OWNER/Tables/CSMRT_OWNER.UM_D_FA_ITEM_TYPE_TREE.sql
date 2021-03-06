CREATE TABLE UM_D_FA_ITEM_TYPE_TREE
(
  INSTITUTION_CD  VARCHAR2(5 BYTE),
  AID_YEAR        VARCHAR2(4 BYTE),
  ITEM_TYPE       VARCHAR2(12 BYTE),
  ITEM_TYPE_SID   INTEGER,
  TREE_EFFDT      DATE,
  TREE_NAME       VARCHAR2(30 BYTE),
  LEVEL_1         VARCHAR2(60 BYTE),
  LEVEL_1_DESCR   VARCHAR2(90 BYTE),
  LEVEL_2         VARCHAR2(60 BYTE),
  LEVEL_2_DESCR   VARCHAR2(90 BYTE),
  LEVEL_3         VARCHAR2(60 BYTE),
  LEVEL_3_DESCR   VARCHAR2(90 BYTE),
  LEVEL_4         VARCHAR2(60 BYTE),
  LEVEL_4_DESCR   VARCHAR2(90 BYTE),
  LEVEL_5         VARCHAR2(60 BYTE),
  LEVEL_5_DESCR   VARCHAR2(90 BYTE),
  LEVEL_6         VARCHAR2(60 BYTE),
  LEVEL_6_DESCR   VARCHAR2(90 BYTE),
  LEVEL_7         VARCHAR2(60 BYTE),
  LEVEL_7_DESCR   VARCHAR2(90 BYTE),
  LEVEL_8         VARCHAR2(60 BYTE),
  LEVEL_8_DESCR   VARCHAR2(90 BYTE)
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
