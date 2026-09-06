CREATE DATABASE MyStore;

USE MyStore;

CREATE TABLE dbo.Products
(
    Id INT IDENTITY(1,1) NOT NULL
        CONSTRAINT PK_Products PRIMARY KEY,

    Name VARCHAR(100) NOT NULL,

    Stock INT NOT NULL,

    Price MONEY NOT NULL,

    Description VARCHAR(500) NULL
);

INSERT INTO dbo.Products
    (Name, Stock, Price, Description)
VALUES
    ('Wireless Mechanical Keyboard', 25, 899000.00,
     'Keyboard mechanical wireless dengan layout compact dan RGB lighting'),

    ('Ergonomic Wireless Mouse', 40, 349000.00,
     'Mouse wireless ergonomis dengan sensor presisi untuk penggunaan harian'),

    ('USB-C Fast Charger 65W', 30, 499000.00,
     'Charger USB-C 65W untuk laptop, tablet, dan smartphone'),

    ('Laptop Stand Aluminum', 18, 279000.00,
     'Stand laptop berbahan aluminium untuk membantu posisi kerja yang lebih ergonomis'),

    ('Noise Cancelling Headphones', 12, 1299000.00,
     'Headphone wireless dengan fitur active noise cancellation'),

    ('Portable SSD 1TB', 20, 1499000.00,
     'SSD portable 1TB dengan koneksi USB-C untuk penyimpanan data cepat'),

    ('Webcam Full HD 1080p', 35, 599000.00,
     'Webcam Full HD untuk video conference dan online meeting'),

    ('USB-C Hub 7-in-1', 22, 429000.00,
     'USB-C hub dengan HDMI, USB, SD card reader, dan port tambahan lainnya'),

    ('Smart LED Desk Lamp', 15, 389000.00,
     'Lampu meja LED dengan tingkat kecerahan yang dapat disesuaikan'),

    ('External Hard Drive 2TB', 10, 1099000.00,
     'Hard disk eksternal 2TB untuk backup dan penyimpanan data');