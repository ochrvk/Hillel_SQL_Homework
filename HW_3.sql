SELECT min(price) as 'min', max(price) as 'max', avg(price) as 'avg'
FROM sakila.PC;
-- -----------------------------------------------------
SELECT min(price) as 'min', max(price) as 'max', avg(price) as 'avg' 
FROM sakila.PC
group by price
having avg(price) < 600;
