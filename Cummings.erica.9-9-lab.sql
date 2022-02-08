-- Write a query to get Product name and quantity/unit.
select product_name, quantity_per_unit from products;

-- Write a query to get current Product list (Product ID and name). 
SELECT id, product_name FROM products WHERE discontinued = 0;

-- Write a query to get discontinued Product list (Product ID and name). 
SELECT id, product_name FROM products WHERE discontinued = 1;

-- Write a query to get most expense and least expensive Product list (name and unit price). 
(SELECT product_name, list_price FROM products ORDER BY list_price DESC LIMIT 1 )
UNION ALL 
(SELECT product_name, list_price FROM products ORDER BY list_price ASC LIMIT 1);
 
-- Write a query to get Product list (id, name, unit price) where current products cost less than $20. 
SELECT id,product_name, list_price FROM products WHERE list_price < 20; 

-- Write a query to get Product list (id, name, unit price) where products cost between $15 and $25.  
SELECT id,product_name, list_price FROM products WHERE list_price BETWEEN 15 AND 25;

-- Write a query to get Product list (name, unit price) of above average price. 
SELECT product_name, list_price FROM products WHERE list_price > (SELECT AVG(list_price) FROM products);
 
-- Write a query to get Product list (name, unit price) of ten most expensive products.  
SELECT product_name, list_price FROM products ORDER BY list_price DESC LIMIT 10;

-- Write a query to count current and discontinued products. 
(SELECT COUNT(product_name) FROM products WHERE discontinued = 0) 
UNION ALL
(SELECT COUNT(product_name) FROM products WHERE discontinued = 1);

-- Write a query to get Product list (name, units on order, units in stock) of stock is less than the quantity on order.  
SELECT products.product_name, order_details.quantity, inventory_transactions.quantity FROM products JOIN 
order_details JOIN inventory_transactions ON products.id=order_details.product_id AND order_details.product_id=inventory_transactions.product_id
WHERE inventory_transactions.quantity < order_details.quantity;