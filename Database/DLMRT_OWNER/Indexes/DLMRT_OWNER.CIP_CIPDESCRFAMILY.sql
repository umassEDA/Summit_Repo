DROP INDEX DLMRT_OWNER.CIP_CIPDESCRFAMILY
/

--
-- CIP_CIPDESCRFAMILY  (Index) 
--
CREATE BITMAP INDEX DLMRT_OWNER.CIP_CIPDESCRFAMILY ON DLMRT_OWNER.CIP
(CIP_DESCR_FAMILY)
/