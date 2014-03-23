--Top gainers in time periods. (Day, week, month, year).--
select a.* from FINANCIAL.STOCK_EXCHANGE a join                                                                       
(select max(STOCK_PRICE_HIGH) as high,datett as dt from                                                     
(select STOCK_PRICE_HIGH,STOCK_PRICE_LOW,substr(STOCK_DATE,1,4) as datett from FINANCIAL.STOCK_EXCHANGE)c 
group by datett)b on (a.STOCK_PRICE_HIGH)=b.high and 
substr(a.STOCK_DATE,1,4)=b.dt order by a.STOCK_DATE;

