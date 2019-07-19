select c.Id, c.Name, c.City, c.State, o.Date, o.Id, o.Note
from Customers c 
Join Orders o
	on c.Id = o.CustomerId
where c.Id = 1029