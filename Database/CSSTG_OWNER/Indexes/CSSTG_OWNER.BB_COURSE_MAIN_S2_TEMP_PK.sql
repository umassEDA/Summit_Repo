DROP INDEX CSSTG_OWNER.BB_COURSE_MAIN_S2_TEMP_PK
/

--
-- BB_COURSE_MAIN_S2_TEMP_PK  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.BB_COURSE_MAIN_S2_TEMP_PK ON CSSTG_OWNER.BB_COURSE_MAIN_S2_SP
(BB_SOURCE, PK1)
/