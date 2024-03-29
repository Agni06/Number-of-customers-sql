--Generate a table with the total number of customers, the number of customers for 
--each country, and the number of female and male customers for each country.
--Order the result by country and gender.

-- Count the total number of customers, the number of customers for each country, and the number of female and male customers for each country
SELECT country,
       gender,
	   COUNT(*)
FROM customers
group by rollup( country, gender)
order by  country, gender; -- Order the result by country and gender
