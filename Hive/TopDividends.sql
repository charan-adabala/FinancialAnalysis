--Top companies according to dividends payments.--
select a.* from FINANCIAL.STOCK_EXCHANGEDIVID a 
join (select max(STOCK_PRICE_DIVID) as Divid from FINANCIAL.STOCK_EXCHANGEDIVID)b
on a.STOCK_PRICE_DIVID=b.Divid;
