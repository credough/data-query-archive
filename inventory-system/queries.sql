-- 1. Select all items
SELECT * FROM Items;

-- 2. Select items under the 'Snacks' category
SELECT item_name, stock
FROM Items
WHERE category_id = 2;

-- 3. Update stock of an item (add 10)
UPDATE Items
SET stock = stock + 10
WHERE item_id = 1;

-- 4. Delete a category (requires deleting items first)
DELETE FROM Items
WHERE category_id = 3;

DELETE FROM Categories
WHERE category_id = 3;

-- 5. Join: items with categories
SELECT I.item_name, I.stock, C.category_name
FROM Items I
JOIN Categories C ON I.category_id = C.category_id;

-- 6. Join: stock movements with item names
SELECT M.movement_id, I.item_name, M.movement_type, M.quantity, M.movement_date
FROM StockMovements M
JOIN Items I ON M.item_id = I.item_id;

-- 7. Show total items in stock per category
SELECT C.category_name, SUM(I.stock) AS total_stock
FROM Items I
JOIN Categories C ON I.category_id = C.category_id
GROUP BY C.category_name;

-- 8. Show all 'IN' movements
SELECT * FROM StockMovements
WHERE movement_type = 'IN';

-- 9. Show all 'OUT' movements
SELECT * FROM StockMovements
WHERE movement_type = 'OUT';
