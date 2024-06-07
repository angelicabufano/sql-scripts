SELECT concat('The number is', str(123))			-- displays a string



SELECT *
--DELETE
	from Customers
	Where id in (
		SELECT Id 
			from Customers
			Where City = 'Cincinnati' and Sales > 30000
			);


begin transaction;

DELETE 
	from Customers 
	Where id = 15;

SELECT *
	from Customers	
	Where id = 15;

rollback transaction;

SELECT *
	from Customers	
	Where id = 22;

UPDATE Customers Set				-- changes Swagelok to Columbus and Sales 10000
	Sales = 33579,
	City = 'Columbus'
	Where Id = 22

SELECT *
	From Customers


INSERT into Customers (Name, City, State, Sales, Active)			-- how to insert a new customer into the database
				VALUES 
				('TQL Charlotte', 'Charlotte', 'NC', 5000, 0),
				('TQL Atlanta', 'Atlanta', 'GA', 15000, 0),
				('TQL Fort Lauderdale', 'Fort Lauderdale', 'FL', 55000, 0);


SELECT *
	from Customers
	order by Id desc




INSERT into Orders							-- add tql 1st order
	(CustomerId, Date, Description)
	VALUES 
	((SELECT Id from Customers
					Where Name = 'TQL'),'2024-06-07', 'TQL 1st Order');

SELECT *								-- shows us 
	from Orders o
	join customers c on c.id = o.customerid
	where name = 'TQL'
	order by o.id desc;