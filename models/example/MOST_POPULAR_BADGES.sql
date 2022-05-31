Select b.Name, count(*)
from Badges b
group by b.Name
order by 2 desc
limit 10;
