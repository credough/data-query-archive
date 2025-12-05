-- Inventory System - Database Schema
CREATE TABLE Categories (
    category_id INTEGER PRIMARY KEY AUTOINCREMENT,
    category_name TEXT NOT NULL
);

CREATE TABLE Items (
    item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    item_name TEXT NOT NULL,
    category_id INTEGER,
    stock INTEGER DEFAULT 0,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE StockMovements (
    movement_id INTEGER PRIMARY KEY AUTOINCREMENT,
    item_id INTEGER,
    movement_type TEXT,  -- 'IN' or 'OUT'
    quantity INTEGER,
    movement_date TEXT,
    FOREIGN KEY (item_id) REFERENCES Items(item_id)
);
