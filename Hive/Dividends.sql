--Continuously declaring dividends in fast specific period (1 yr ,10 yr etc).--
select * from FINANCIAL.STOCK_EXCHANGEDIVID where STOCK_PRICE_DIVID NOT IN(0) GROUP BY STOCK_DATE,STOCK_SYMBOL;
