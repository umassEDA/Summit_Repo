DROP INDEX CSSTG_OWNER.PK_PS_INSTRUCT_MODE
/

--
-- PK_PS_INSTRUCT_MODE  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_INSTRUCT_MODE ON CSSTG_OWNER.PS_INSTRUCT_MODE
(INSTITUTION, INSTRUCTION_MODE, EFFDT, SRC_SYS_ID)
/
