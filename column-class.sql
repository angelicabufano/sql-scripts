
SELECT *, 'A' 'Class'			-- adds a column named Class and categorises all of the customers who's sales is greater than 80000 as "Class A"
	from Customers 
	where sales >= 80000
union
SELECT *, 'B' 'Class'			-- adds a column named Class and categorises all of the customers who's sales is less than 80000 but greater than or equal to 20000 as "Class B"
	from Customers 
	where sales < 80000 and sales >= 20000
union
SELECT *, 'C' 'Class'			-- adds a column named Class and categorizes all of the customers who's sales is less than 20000 as "Class C"
	from Customers 
	where sales <20000
order by 'class'				-- sorted by Class




SELECT avg(Sales)			-- shows average of sales
	from Customers 

SELECT *					--shows all customers where sales are more than the average
	from Customers
	Where Sales > 56951



SELECT *					-- same as two queries above except combined
	from Customers		
	Where Sales >
		(SELECT avg(Sales)
			from Customers)


SELECT *					-- shows us customers who's sales are less than the average in Columbus
	from Customers	
	Where Sales < 
		(SELECT avg(Sales)
			from Customers
			Where City = 'Columbus')


SELECT *					-- shows us customers who's sales are greater than or equal to the average of sales in Cleveland and Cincinnati combined
	from Customers	
	Where Sales >=
		(SELECT avg(Sales)
			from Customers
			Where City in ('Cincinnati', 'Cleveland'))


SELECT *					-- shows us customers who's sales are greater than the average in cincinnati and greater than the average in cleveland
	from Customers
	Where Sales >= 
		(SELECT avg(Sales)
		from Customers
		Where City = 'Cincinnati')
	and
		Sales >= (SELECT avg(Sales)
					from Customers
					Where City = 'Cleveland')
	and
		City != 'Columbus'						-- doesn't show us the customers in Columbus
		order by city desc, sales desc			-- sorting by city and sales in descending order
	

