DROP INDEX CSSTG_OWNER.PK_PS_STDNT_ATTR_DTL
/

--
-- PK_PS_STDNT_ATTR_DTL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_STDNT_ATTR_DTL ON CSSTG_OWNER.PS_STDNT_ATTR_DTL
(EMPLID, ACAD_CAREER, STDNT_CAR_NBR, EFFDT, EFFSEQ, 
STDNT_ATTR, STDNT_ATTR_VALUE, SRC_SYS_ID)
/