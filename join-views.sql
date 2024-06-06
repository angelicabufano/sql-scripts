SELECT *
	from Customers
	join Orders
		on Orders.CustomerId = Customers.Id 



SELECT Date, Orders.Description 'Order', Product, OrderLines.Description, Quantity, Price
	from Orders
	join OrderLines
		on OrderLines.OrdersId = Orders.Id
	Order by product, orderlines.description;