CREATE DATABASE IF NOT EXISTS mystore;

USE mystore;

CREATE TABLE products (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
stock INT NOT NULL,
price DECIMAL(15, 2) NOT NULL,
description VARCHAR(100) DEFAULT NULL,
PRIMARY KEY (id)
);

INSERT INTO products (name, stock, price, description)
VALUES
('Mechanical Keyboard', 25, 1250000.00, 'Keyboard mechanical dengan switch tactile dan layout tenkeyless.'),
('Wireless Mouse', 40, 350000.00, 'Mouse wireless dengan sensor presisi tinggi dan desain ergonomis.'),
('USB-C Hub', 15, 275000.00, 'USB-C hub dengan port HDMI, USB 3.0, dan card reader.'),
('Laptop Stand', 30, 450000.00, 'Stand laptop aluminium yang dapat membantu posisi kerja lebih ergonomis.'),
('Webcam Full HD', 18, 850000.00, 'Webcam Full HD untuk video conference dan streaming.'),
('Noise Cancelling Headphones', 12, 1750000.00, 'Headphone dengan fitur active noise cancellation.'),
('Portable SSD 1TB', 20, 1450000.00, 'SSD portable berkapasitas 1TB dengan koneksi USB-C.'),
('Monitor 24 Inch', 10, 2200000.00, 'Monitor 24 inch dengan resolusi Full HD dan refresh rate 75Hz.'),
('Bluetooth Speaker', 35, 550000.00, 'Speaker Bluetooth portable dengan suara jernih dan baterai tahan lama.'),
('Gaming Chair', 8, 3200000.00, 'Kursi gaming dengan sandaran ergonomis dan adjustable armrest.');