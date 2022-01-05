CREATE TABLE UM_F_SF_TUITION_WAIVER_DTL
(
  INSTITUTION_CD    VARCHAR2(5 BYTE),
  ITEM_TERM         VARCHAR2(4 BYTE),
  ITEM_TERM_LD      VARCHAR2(30 BYTE),
  PERSON_ID         VARCHAR2(11 BYTE),
  ITEM_TYPE         VARCHAR2(12 BYTE),
  ITEM_TYPE_LD      VARCHAR2(30 BYTE),
  ACAD_CAREER       VARCHAR2(4 BYTE),
  INSTITUTION_SID   INTEGER,
  ITEM_TERM_SID     INTEGER,
  ACAD_CAR_SID      INTEGER,
  PERSON_SID        INTEGER,
  ITEM_TYPE_SID     INTEGER,
  ACAD_YEAR         VARCHAR2(4 BYTE),
  SPONSOR_ID        VARCHAR2(20 BYTE),
  BENEFICIARY_TYPE  VARCHAR2(30 BYTE),
  ITEM_AMT          NUMBER(16,2),
  AMOUNT_TYPE       VARCHAR2(30 BYTE),
  DAY_CE_FLAG       VARCHAR2(30 BYTE),
  PARTITION_KEY     VARCHAR2(10 BYTE),
  LOAD_ERROR        VARCHAR2(1 BYTE),
  DATA_ORIGIN       VARCHAR2(1 BYTE),
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE
)
NOCOMPRESS 
NO INMEMORY
PARTITION BY LIST (PARTITION_KEY)
(  
  PARTITION UMBFAL2016 VALUES ('UMBFAL2016')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMDFAL2016 VALUES ('UMDFAL2016')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMLFAL2016 VALUES ('UMLFAL2016')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMBSPR2017 VALUES ('UMBSPR2017')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMDSPR2017 VALUES ('UMDSPR2017')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMLSPR2017 VALUES ('UMLSPR2017')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMBFAL2017 VALUES ('UMBFAL2017')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMDFAL2017 VALUES ('UMDFAL2017')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMLFAL2017 VALUES ('UMLFAL2017')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMBSPR2018 VALUES ('UMBSPR2018')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMDSPR2018 VALUES ('UMDSPR2018')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMLSPR2018 VALUES ('UMLSPR2018')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMBFAL2018 VALUES ('UMBFAL2018')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMDFAL2018 VALUES ('UMDFAL2018')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMLFAL2018 VALUES ('UMLFAL2018')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMBSPR2019 VALUES ('UMBSPR2019')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMDSPR2019 VALUES ('UMDSPR2019')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMLSPR2019 VALUES ('UMLSPR2019')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMBFAL2019 VALUES ('UMBFAL2019')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMDFAL2019 VALUES ('UMDFAL2019')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMLFAL2019 VALUES ('UMLFAL2019')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMBSPR2020 VALUES ('UMBSPR2020')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMDSPR2020 VALUES ('UMDSPR2020')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMLSPR2020 VALUES ('UMLSPR2020')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMBFAL2020 VALUES ('UMBFAL2020')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMDFAL2020 VALUES ('UMDFAL2020')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS ,  
  PARTITION UMLFAL2020 VALUES ('UMLFAL2020')
    READ WRITE
    NO INMEMORY
    NOLOGGING
    NOCOMPRESS
)
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;