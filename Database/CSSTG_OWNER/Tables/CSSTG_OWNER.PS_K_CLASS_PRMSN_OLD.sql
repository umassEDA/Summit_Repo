DROP TABLE CSSTG_OWNER.PS_K_CLASS_PRMSN_OLD CASCADE CONSTRAINTS
/

--
-- PS_K_CLASS_PRMSN_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_K_CLASS_PRMSN_OLD
(
  CRSE_ID          VARCHAR2(6 BYTE)             NOT NULL,
  CRSE_OFFER_NBR   INTEGER                      NOT NULL,
  STRM             VARCHAR2(4 BYTE)             NOT NULL,
  SESSION_CODE     VARCHAR2(3 BYTE)             NOT NULL,
  CLASS_SECTION    VARCHAR2(4 BYTE)             NOT NULL,
  PERMISSION_TYPE  VARCHAR2(1 BYTE)             NOT NULL,
  CLASS_PRMSN_SEQ  INTEGER                      NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL
)
NOCOMPRESS
/