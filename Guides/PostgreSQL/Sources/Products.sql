CREATE TABLE products
(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    stock INTEGER NOT NULL,
    price NUMERIC(15,2) NOT NULL,
    description VARCHAR(500)
);

INSERT INTO products (name, stock, price, description)
VALUES
('Mechanical Keyboard', 25, 850000.00, 'RGB mechanical keyboard with blue switches.'),
('Wireless Mouse', 40, 275000.00, 'Ergonomic wireless mouse with USB receiver.'),
('27-inch Monitor', 15, 2499000.00, 'Full HD IPS monitor with HDMI and DisplayPort.'),
('USB-C Hub', 50, 399000.00, '7-in-1 USB-C hub supporting HDMI and card reader.'),
('External SSD 1TB', 18, 1799000.00, 'Portable high-speed USB 3.2 solid state drive.'),
('Laptop Stand', 30, 325000.00, 'Aluminum adjustable stand for laptops up to 17 inches.'),
('Webcam HD', 22, 650000.00, '1080p webcam with built-in microphone.'),
('Bluetooth Speaker', 35, 575000.00, 'Portable Bluetooth speaker with 12-hour battery life.'),
('Gaming Headset', 28, 925000.00, 'Over-ear gaming headset with surround sound.'),
('Wireless Charger', 45, 215000.00, '15W fast wireless charging pad compatible with Qi devices.');