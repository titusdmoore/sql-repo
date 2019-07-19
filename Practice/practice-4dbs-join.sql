select l.OrderId, c.Name, l.Quantity, p.Name, Format(p.Price, 'C') as 'Price'
from Customers c
join Orders o
	on c.Id = o.CustomerId
join OrderLines l 
	on o.Id = l.OrderId
join Products p
	on l.ProductId = p.Id
where o.Id = 2031
