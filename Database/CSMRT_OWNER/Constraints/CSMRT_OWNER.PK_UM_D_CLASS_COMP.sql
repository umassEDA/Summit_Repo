ALTER TABLE CSMRT_OWNER.UM_D_CLASS_COMP
  DROP CONSTRAINT PK_UM_D_CLASS_COMP
/

ALTER TABLE CSMRT_OWNER.UM_D_CLASS_COMP ADD (
  CONSTRAINT PK_UM_D_CLASS_COMP
  PRIMARY KEY
  (CRSE_CD, CRSE_OFFER_NUM, TERM_CD, SESSION_CD, ASSOCIATED_CLASS, SSR_COMP_CD, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/