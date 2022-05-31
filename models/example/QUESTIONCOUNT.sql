select u.Id, u.DisplayName, u.Reputation, count(*) as QuestionsAsked
from Users u inner join Posts p on u.id = p.OwnerUserId and p.PostTypeId = 1
where u.reputation > 75000
group by u.Id, u.DisplayName, u.Reputation
order by QuestionsAsked desc
limit 10;
