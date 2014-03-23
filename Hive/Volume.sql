--Highest traded in volumes.--
select a.* from FINANCIAL.STOCK_EXCHANGE a 
join (select max(STOCK_PRICE_VOLUME) as volume from FINANCIAL.STOCK_EXCHANGE)b
on a.STOCK_PRICE_VOLUME=b.volume;
