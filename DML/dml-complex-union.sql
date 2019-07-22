select cast(u.Id as nvarchar(10)) as ID, r.Description, r.Status, u.userName as 'User Name', p.Name, cast(l.Quantity as nvarchar(20)) as Quantity
, cast(p.Price as nvarchar(20)) as Price,
(p.Price * l.quantity) as 'Sub Total'
from Users u
join Requests r
	on r.UserId = u.Id
Join RequestLines l
	on l.RequestId = r.Id
Join Products p
	on l.ProductId = p.Id
where u.Id = 1
union all
select COALESCE(null, '') as ' ', coalesce(null, ' '), coalesce(null, ' '), coalesce(null, ' '),
	coalesce(null, ' '), coalesce(null, ' '), coalesce(null, 'TOTAL:'), sum(p.Price * l.quantity)
from Users u
join Requests r
	on r.UserId = u.Id
Join RequestLines l
	on l.RequestId = r.Id
Join Products p
	on l.ProductId = p.Id