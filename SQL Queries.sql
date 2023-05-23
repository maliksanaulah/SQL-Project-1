   ### DATA  ANALYSIS PROJECT  ATLIQ HARDWARE Using SQL
   
 # Here sales schema is set as default
 
 # 1) Show all Customer Record 
 select * from  sales.customers ;
 
 # 2) Show Total number of customers
 select count(*) from customers;
 
 # 3) Show transactions for chennai market (Market code of channai is Mark001)
 select * from transactions where market_code ='Mark001';
 
 # 4) Show distinct product_code that where sold in chennai
 select distinct product_code from transactions where market_code ='Mark001';

# 5) Show trasnactions where currency is in US dollars
select * from transactions where currency ='USD';

# 6) Show Transaction in 2019 join by date table
select transactions.*, date.* from transactions  inner join date on transactions.order_date=date.date where date.year= 2019;

# 7) Show first 5 records of transactions 
select * from transactions limit 5;

# 8) Show total revenue in year 2020 in january month
select SUM(transactions.sales_amount) from transactions inner join date on transactions.order_date=date.date 
where date.year=2020 and date.month_name='January';

# 9) show total revenue in year in chennai market (Mark001)
select sum(transactions.sales_amount) from transactions inner join date on transactions.order_date=date.date 
where date.year=2019 and transactions.market_code='Mark001'

# 10) Show the sales record where sales are less than 1 
select * from transactions where sales_amount <1;


# 11) SHOW RECORD where sales are in negative
select * from transactions where sales_amount<0;

# 12) Show number of transactions which are in INR Currency
select count(*) from transactions where Currency='INR' ;

# 13) Show number of duplicate transactions which are in INR Currency
SELECT count(*) from transactions where Currency='INR\r'

# 14) Show Number of duplicate transactions which are in USD 
select count(*) from transactions where Currency='USD\r'
