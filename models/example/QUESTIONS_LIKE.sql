select p.Title, p.Score, u.DisplayName
from Posts p inner join Users u on p.OwnerUserId = u.Id
and p.PostTypeId = 1
where u.DisplayName = 'nau'
order by p.Score desc;
