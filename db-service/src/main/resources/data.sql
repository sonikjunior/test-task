-- CLIENTS TABLE

DROP TABLE IF EXISTS clients;

CREATE TABLE clients (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  sum INT NOT NULL
);

INSERT INTO clients (name, sum) VALUES
  ('Petrov', 500),
  ('Ivanov', 1000),
  ('Sidorov', 2000);

CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

-- SUPPLIERS TABLE

DROP TABLE IF EXISTS suppliers;

CREATE TABLE suppliers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  sum INT NOT NULL
);

INSERT INTO suppliers (name, sum) VALUES
  ('MTS', 1500),
  ('Beeline', 5000),
  ('Megafon', 4000);

-- PRODUCTS TABLE

DROP TABLE IF EXISTS products;

INSERT INTO products (name) VALUES
  ('Интернет'),
  ('Сотовая связь'),
  ('Телевидение'),
  ('Видеонаблюдение');

-- CONTRACTS TABLE

DROP TABLE IF EXISTS contracts;

CREATE TABLE contracts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  client_id INT NOT NULL,
  product_id INT NOT NULL,
  supplier_id INT NOT NULL,
  activated BOOLEAN NOT NULL,
  FOREIGN KEY (client_id) REFERENCES clients(id),
  FOREIGN KEY (product_id) REFERENCES products(id),
  FOREIGN KEY (supplier_id) REFERENCES suppliers(id)
);

INSERT INTO contracts (client_id, product_id, supplier_id, activated) VALUES
  (1, 1, 1, TRUE),
  (3, 2, 2, FALSE)
