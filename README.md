🛒 Shop Manager

A simple Shop Management System built with PHP + MySQL + Bootstrap.
It allows you to manage products, create invoices, track stock, and handle sales easily.

🚀 Features

✅ Add, Edit, Delete Products

✅ Track Stock, Unit, Price, Minimum Stock Alert

✅ Create Invoices with multiple products

✅ Auto Stock Deduction on sale

✅ Discount, Tax, Paid & Due calculations

✅ Invoice preview with Print & PDF Download

✅ CSRF Protection & Secure Queries

✅ Responsive Bootstrap 5 UI

📂 Project Structure
shop_manager/
│
├── includes/
│   └── header2.php        # Common header (Bootstrap, nav, etc.)
│
├── products/
│   └── index.php          # Product management (CRUD)
│
├── invoices/
│   └── create.php         # Create & manage invoices
│
├── sql/
│   └── shop_manager.sql   # Database schema
│
├── README.md              # Project documentation
└── ...

🗄️ Database Schema
1. shops
CREATE TABLE shops (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

2. products
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    stock INT DEFAULT 0,
    unit VARCHAR(50),
    price DECIMAL(10,2),
    min_stock INT DEFAULT 0,
    shop_id INT,
    FOREIGN KEY (shop_id) REFERENCES shops(id) ON DELETE CASCADE
);

3. invoices
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_no VARCHAR(50) UNIQUE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    subtotal DECIMAL(10,2) DEFAULT 0,
    discount DECIMAL(10,2) DEFAULT 0,
    tax DECIMAL(10,2) DEFAULT 0,
    total DECIMAL(10,2) DEFAULT 0,
    paid DECIMAL(10,2) DEFAULT 0,
    due DECIMAL(10,2) DEFAULT 0
);

4. invoice_items
CREATE TABLE invoice_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (invoice_id) REFERENCES invoices(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
);

⚙️ Installation

Clone or download this repository:

git clone https://github.com/yourusername/shop_manager.git


Import the database:

Open phpMyAdmin or MySQL CLI

Create a database shop_manager

Import sql/shop_manager.sql

Configure database in PHP files:

$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "shop_manager";


Start local server:

php -S localhost:8000


Open in browser:

http://localhost:8000/products/index.php

📸 Screenshots
Product Management

Invoice Creation

🔒 Security Notes

Uses prepared statements to prevent SQL Injection

CSRF token included in invoice creation form

All user input validated before database entry

🛠️ Future Improvements

Add User Roles (Admin, Cashier)

Add Customer Management

Add Sales Reports (Daily, Monthly, Yearly)

Add Barcode/QR Code Print for products

👨‍💻 Author

Developed by [Abdur Rahman]
📧 Contact: redwanraju75@gmail.com


ChatGPT can make mistake
