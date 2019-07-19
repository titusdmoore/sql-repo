select o.Date, c.name, c.City, c.State, l.*
from Customers c
join Orders o
	on o.CustomerId = c.Id
Join OrderLines l
	on o.Id = l.OrderId