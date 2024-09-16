--Data
Select * From pizza_sales$

--Total Revenue
--Select CAST(SUM(total_price)AS DECIMAL(10,2)) AS [Total Revenue] From pizza_sales$

--Average Order Value = total revenue/total number of order
--Select CAST(SUM(total_price)/Count(Distinct order_id) AS DECIMAL(10,2)) AS [Average Order Value] From pizza_sales$

--Total Pizza Sold
--Select SUM(quantity) AS [Total Pizza Sold] From pizza_sales$

--Total Order Placed
--Select COUNT(Distinct order_id) AS [Total Orders] from pizza_sales$

--Average Pizzas per order = total pizza sold/total orders
--SELECT CAST(CAST(COUNT(pizza_id) AS DECIMAL(10,2))/CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS [Average Pizza Per Order] FROM pizza_sales$


--Revenue by Pizza Category
--Select pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2))  AS [Revenue by Pizza Category] From pizza_sales$ Group By pizza_category


--Revenue by Pizza Size
--SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) AS [Revenue by Pizza Size] FROM pizza_sales$ GROUP BY pizza_size
--ORDER BY 
--	CASE pizza_size
--		WHEN 'S' THEN 1
--		WHEN 'M' THEN 2
--		WHEN 'L' THEN 3
--		WHEN 'XL' THEN 4
--		WHEN 'XXL' THEN 5
--	END;


--Top selling Pizza

--SELECT TOP 10 pizza_name, SUM(quantity) AS [Total Pizza Sold], CAST(SUM(total_price) AS DECIMAL(10,2)) AS [Revenue by Pizza Type] FROM pizza_sales$
--GROUP BY pizza_name
--ORDER BY [Revenue by Pizza Type] DESC 



--Peak order time
--SELECT DATEPART(HOUR, order_time) AS [Order Hour], COUNT(DISTINCT order_id) AS [Total Orders], CAST(SUM(total_price) AS DECIMAL(10,2)) AS [Revenue by Hour] FROM pizza_sales$
--GROUP BY DATEPART(HOUR, order_time)
--ORDER BY [Revenue by Hour] DESC


--Peak Day of the week
--SELECT DATENAME(WEEKDAY, order_date) AS Weekday, /*COUNT(DISTINCT order_id) AS [Total Order],*/ CAST(SUM(total_price) AS DECIMAL(10,2)) AS [Revenue by Day] FROM pizza_sales$
--GROUP BY DATENAME(WEEKDAY, order_date)
--ORDER BY [Revenue by Day] DESC 
		--CASE DATENAME(WEEKDAY, order_date)
		--WHEN 'Monday' THEN 1
		--WHEN 'Tuesday' THEN 2
		--WHEN 'Wednesday' THEN 3
		--WHEN 'Thursday' THEN 4
		--WHEN 'Friday' THEN 5
		--WHEN 'Saturday' THEN 6
		--WHEN 'Sunday' THEN 7
		--END;




--Percentage of sales revenue by pizza category

--SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) AS [Revenue], 
--CAST(((SUM(total_price)*100)/(SELECT SUM(total_price) FROM pizza_sales$)) AS DECIMAL(10,2)) AS [Percentage of Total Sale] 
--FROM pizza_sales$ 
--GROUP BY pizza_category
--ORDER BY [Percentage of Total Sale] DESC


--Percentage of sales revenue by pizza size
--SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) AS [Revenue], 
--CAST(((SUM(total_price)*100)/(SELECT SUM(total_price) FROM pizza_sales$)) AS DECIMAL(10,2)) AS [Percentage of Total Sale] 
--FROM pizza_sales$ 
--GROUP BY pizza_size
--ORDER BY [Percentage of Total Sale] DESC


--Top selling pizza
--SELECT TOP 10 pizza_name, SUM(quantity) AS [Total Pizza Sold], CAST(SUM(total_price) AS DECIMAL(10,2)) AS [Revenue by Pizza Type],CAST(((SUM(total_price)*100)/(SELECT SUM(total_price) FROM pizza_sales$)) AS DECIMAL(10,2)) AS [Percentage of Total Sale]   
--FROM pizza_sales$
--GROUP BY pizza_name
--ORDER BY [Revenue by Pizza Type] DESC


--WORST SELLING PIZZA
--SELECT TOP 10 pizza_name, SUM(quantity) AS [Total Pizza Sold], CAST(SUM(total_price) AS DECIMAL(10,2)) AS [Revenue by Pizza Type],CAST(((SUM(total_price)*100)/(SELECT SUM(total_price) FROM pizza_sales$)) AS DECIMAL(10,2)) AS [Percentage of Total Sale]   
--FROM pizza_sales$
--GROUP BY pizza_name
--ORDER BY [Revenue by Pizza Type] 




