DROP INDEX DLMRT_OWNER.NK_IR_CITIZENSHIP_DTL_CONFIRMED
/

--
-- NK_IR_CITIZENSHIP_DTL_CONFIRMED  (Index) 
--
CREATE UNIQUE INDEX DLMRT_OWNER.NK_IR_CITIZENSHIP_DTL_CONFIRMED ON DLMRT_OWNER.IR_CITIZENSHIP_DTL_CONFIRMED
(INSTITUTION, CENSUS_PERIOD, CENSUS_SEQ, PERSON_ID, COUNTRY_2CHAR)
/