SELECT *
	from Customers c
	join Orders o
		on o.CustomerId = c.Id 
	join OrderLines ol
		on ol.OrdersId = o.Id  


SELECT Date, Orders.Description 'Order', Product, OrderLines.Description, Quantity, Price
	from Orders
	join OrderLines
		on OrderLines.OrdersId = Orders.Id
	Order by product, orderlines.description;

