CREATE VIEW goods
      AS SELECT * 
         FROM items 
         WHERE price = 
           (SELECT MAX(price) 
            FROM items); 
-- -----------------------------------------------------
CREATE VIEW emploee_number 
      AS SELECT item_id, COUNT(DISTINCT emploee_id) as 'emploee'
      FROM sales 
         GROUP BY item_id; 
-- -----------------------------------------------------
CREATE VIEW nameorders 
      AS SELECT name, AVG(position) as 'AVG', SUM(position) as 'SUM' 
         FROM employees
         GROUP BY name; 
         
