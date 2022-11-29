DROP INDEX CSSTG_OWNER.PK_PS_BI_BILL_HEADER
/

--
-- PK_PS_BI_BILL_HEADER  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_BI_BILL_HEADER ON CSSTG_OWNER.PS_BI_BILL_HEADER
(BUSINESS_UNIT, INVOICE_ID, SRC_SYS_ID)
/