

-- Checking All Datas in Table
SELECT * FROM Western;


--Checking TOTAL no of RECORDS to check all data importaed or not
select COUNT(*) as TOTAL_RECORDS from Western


--Selecting sales data of county Germany
SELECT * FROM Western
where Country = 'Germany'
;


--Checking total unit sold in Germany for all product
SELECT Product, SUM(Units_Sold) as Total_Units_Sold
FROM Western
WHERE Country = 'Germany'
GROUP BY Product;


--Checking total Sales and Profit for Each Country
SELECT Country, SUM(Sales) as Total_Sales, SUM(Profit) as Total_profit
FROM Western
WHERE Year = 2014
GROUP BY Country;
