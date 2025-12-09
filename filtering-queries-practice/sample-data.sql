INSERT INTO Suppliers (supplier_name, contact_number) VALUES
('Universal Robina', '09170000001'),
('Monde Nissin', '09170000002'),
('Local Wet Market', '09180000003');

INSERT INTO Items (item_name, category, price, stock, supplier_id) VALUES
('Noodles', 'Food', 15.00, 120, 1),
('Bottled Water 500ml', 'Beverages', 20.00, 80, 2),
('Coffee Sachet', 'Beverages', 8.00, 200, 1),
('Canned Sardines', 'Food', 28.00, 50, 3),
('Shampoo Sachet', 'Toiletries', 6.00, 300, 2),
('Soap Bar', 'Toiletries', 25.00, 40, 3);

INSERT INTO Sales (item_id, quantity, sale_date) VALUES
(1, 5, '2025-01-10'),
(2, 10, '2025-01-10'),
(3, 20, '2025-01-11'),
(4, 2, '2025-01-11'),
(5, 8, '2025-01-12'),
(1, 25, '2025-01-12'),
(6, 5, '2025-01-12');