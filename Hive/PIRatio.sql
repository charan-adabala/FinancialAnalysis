--Top companies according to p/l ratio.--
select a.* from FINANCIAL.STOCK_EXCHANGE a 
join (select max(STOCK_PRICE_HIGH-STOCK_PRICE_LOW) as higha from FINANCIAL.STOCK_EXCHANGE)b
on a.STOCK_PRICE_HIGH-a.STOCK_PRICE_LOW=b.higha;
