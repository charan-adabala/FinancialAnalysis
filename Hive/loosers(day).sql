-- Top looser in time periods. (Day, week, month, year)--
select a.* from FINANCIAL.STOCK_EXCHANGE a join                                                                       
(select min(STOCK_PRICE_HIGH) as low,datett as dt from                                                     
(select STOCK_PRICE_HIGH,STOCK_PRICE_LOW,STOCK_DATE as datett from FINANCIAL.STOCK_EXCHANGE)c 
group by datett)b on (a.STOCK_PRICE_HIGH)=b.low and 
a.STOCK_DATE=b.dt order by a.STOCK_DATE;
