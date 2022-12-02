select min(amount) as 'Min', max(amount) as 'Max'  
from sakila.payment;
-- -----------------------------------------------------
select avg(amount) as 'AVG'  
from sakila.payment;
-- -----------------------------------------------------
select * 
from sakila.payment
order by payment_date desc;
-- -----------------------------------------------------
select * 
from sakila.payment
order by payment_date asc;
-- -----------------------------------------------------
select * 
from sakila.film
where rating = 'R';
-- -----------------------------------------------------
select actor_id 
from sakila.actor 
where actor_id in 
(select distinct actor_id from sakila.film_actor);
