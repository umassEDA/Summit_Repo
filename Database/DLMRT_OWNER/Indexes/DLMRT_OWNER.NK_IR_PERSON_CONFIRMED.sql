DROP INDEX DLMRT_OWNER.NK_IR_PERSON_CONFIRMED
/

--
-- NK_IR_PERSON_CONFIRMED  (Index) 
--
CREATE UNIQUE INDEX DLMRT_OWNER.NK_IR_PERSON_CONFIRMED ON DLMRT_OWNER.IR_PERSON_CONFIRMED
(INSTITUTION, CENSUS_PERIOD, CENSUS_SEQ, PERSON_ID)
/
