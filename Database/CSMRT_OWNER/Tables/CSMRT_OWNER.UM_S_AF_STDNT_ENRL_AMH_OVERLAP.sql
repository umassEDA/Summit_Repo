DROP TABLE CSMRT_OWNER.UM_S_AF_STDNT_ENRL_AMH_OVERLAP CASCADE CONSTRAINTS
/

--
-- UM_S_AF_STDNT_ENRL_AMH_OVERLAP  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_S_AF_STDNT_ENRL_AMH_OVERLAP
(
  INSTITUTION_CD    VARCHAR2(5 BYTE)            NOT NULL,
  ACAD_CAR_CD       VARCHAR2(5 BYTE)            NOT NULL,
  TERM_CD           VARCHAR2(4 BYTE)            NOT NULL,
  PERSON_ID         VARCHAR2(11 BYTE)           NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 BYTE)            NOT NULL,
  EFFDT_START       DATE                        NOT NULL,
  EFFDT_END         DATE                        NOT NULL,
  PREV_EFFDT_START  DATE,
  PREV_EFFDT_END    DATE,
  FLAG              VARCHAR2(7 BYTE),
  GAPDAYCOUNT       NUMBER
)
NOCOMPRESS
/
