ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_DTL MODIFY 
  LN_ANTIC_NET_TOT NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_DTL MODIFY 
  LN_ANTIC_NET_TOT NOT NULL
  ENABLE VALIDATE
/