DROP INDEX DLMRT_OWNER.CIP_CIPCODEDISCIPLINE
/

--
-- CIP_CIPCODEDISCIPLINE  (Index) 
--
CREATE BITMAP INDEX DLMRT_OWNER.CIP_CIPCODEDISCIPLINE ON DLMRT_OWNER.CIP
(CIP_CODE_DISCIPLINE)
/
