-- queries i used

-- items priced above 20 pesos
SELECT item_name, price
FROM Items
WHERE price > 20;

-- items priced below 10 pesos
SELECT item_name, price
FROM Items
WHERE price < 10;

-- items with low stock (less than 50)
SELECT item_name, stock
FROM Items
WHERE stock < 50;

-- items with stock of at least 100
SELECT item_name, stock
FROM Items
WHERE stock >= 100;

-- count how many items cost 20 pesos or below
SELECT COUNT(*) AS items_20_below
FROM Items
WHERE price <= 20;

-- total quantity sold of each item
SELECT 
    I.item_name,
    SUM(S.quantity) AS total_sold
FROM Sales S
JOIN Items I ON S.item_id = I.item_id
GROUP BY S.item_id;

-- show only items that sold more than 10 units
SELECT 
    I.item_name,
    SUM(S.quantity) AS total_sold
FROM Sales S
JOIN Items I ON S.item_id = I.item_id
GROUP BY S.item_id
HAVING SUM(S.quantity) > 10;

-- distinct categories available in inventory
SELECT DISTINCT category
FROM Items;

-- total items with stock more than 150
SELECT COUNT(*) AS high_stock_items
FROM Items
WHERE stock > 150;

-- items between 10 and 25 pesos
SELECT item_name, price
FROM Items
WHERE price BETWEEN 10 AND 25;
