ALTER TABLE CSSTG_OWNER.PS_T_PERSON_CHECKLST MODIFY 
  CHECKLIST_STATUS NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_PERSON_CHECKLST MODIFY 
  CHECKLIST_STATUS NOT NULL
  ENABLE VALIDATE
/