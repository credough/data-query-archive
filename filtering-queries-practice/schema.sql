CREATE TABLE Suppliers(
  supplier_id INTEGER PRIMARY KEY AUTOINCREMENT,
  supplier_name TEXT NOT NULL,
  contact_number TEXT
);

CREATE TABLE Items (
  item_id INTEGER PRIMARY KEY AUTOINCREMENT,
  item_name TEXT NOT NULL,
  category TEXT,
  price REAL NOT NULL,
  stock INTEGER NOT NULL,
  supplier_id INTEGER,
  
  FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

CREATE TABLE Sales(
  sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
  item_id INTEGER,
  quantity INTEGER NOT NULL,
  sale_date TEXT,
  
  FOREIGN KEY (item_id) REFERENCES Items(item_id)
);