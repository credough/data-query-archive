-- Sample Datas
INSERT INTO Categories (category_name) VALUES
('Beverages'),
('Snacks'),
('Cleaning Supplies');

INSERT INTO Items (item_name, category_id, stock) VALUES
('Coke 1L', 1, 20),
('Sprite 1L', 1, 15),
('Chips Deluxe', 2, 30),
('Detergent Powder', 3, 12);

INSERT INTO StockMovements (item_id, movement_type, quantity, movement_date) VALUES
(1, 'IN', 10, '2025-01-03'),
(2, 'OUT', 5, '2025-01-04'),
(3, 'OUT', 4, '2025-01-05'),
(4, 'IN', 6, '2025-01-06');
