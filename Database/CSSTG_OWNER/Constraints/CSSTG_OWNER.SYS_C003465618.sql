ALTER TABLE CSSTG_OWNER.PS_T_ENRL_REQ_DETAIL MODIFY 
  DROP_CLASS_IF_ENRL NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_ENRL_REQ_DETAIL MODIFY 
  DROP_CLASS_IF_ENRL NOT NULL
  ENABLE VALIDATE
/
