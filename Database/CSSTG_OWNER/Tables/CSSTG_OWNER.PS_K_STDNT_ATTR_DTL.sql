DROP TABLE CSSTG_OWNER.PS_K_STDNT_ATTR_DTL CASCADE CONSTRAINTS
/

--
-- PS_K_STDNT_ATTR_DTL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_K_STDNT_ATTR_DTL
(
  EMPLID            VARCHAR2(11 BYTE)           NOT NULL,
  ACAD_CAREER       VARCHAR2(4 BYTE)            NOT NULL,
  STDNT_CAR_NBR     INTEGER                     NOT NULL,
  EFFDT             DATE                        NOT NULL,
  EFFSEQ            INTEGER                     NOT NULL,
  STDNT_ATTR        VARCHAR2(4 BYTE)            NOT NULL,
  STDNT_ATTR_VALUE  VARCHAR2(10 BYTE)           NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 BYTE)            NOT NULL
)
COMPRESS BASIC
/