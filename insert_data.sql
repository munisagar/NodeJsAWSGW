-- Insert customers
INSERT INTO customers (id, name, email, phone, address)
VALUES
    (1, 'John Doe', 'john@example.com', '+1234567890', '123 Main St, NY'),
    (2, 'Jane Smith', 'jane@example.com', '+9876543210', '456 Elm St, LA'),
    (3, 'Alice Brown', 'alice@example.com', '+1122334455', '789 Oak St, SF'),
    (4, 'Bob White', 'bob@example.com', '+2233445566', '101 Pine St, NY'),
    (5, 'Charlie Green', 'charlie@example.com', '+3344556677', '202 Birch St, LA'),
    (6, 'David Black', 'david@example.com', '+4455667788', '303 Cedar St, SF'),
    (7, 'Emma Gray', 'emma@example.com', '+5566778899', '404 Maple St, NY'),
    (8, 'Frank Blue', 'frank@example.com', '+6677889900', '505 Redwood St, LA'),
    (9, 'Grace Pink', 'grace@example.com', '+7788990011', '606 Willow St, SF'),
    (10, 'Henry Yellow', 'henry@example.com', '+8899001122', '707 Elm St, NY');

-- Insert accounts
INSERT INTO accounts (id, customerId, accountNumber, type, balance, currency)
VALUES
    (1, 1, '1234567890', 'Savings', 5000, 'USD'),
    (2, 2, '0987654321', 'Checking', 2000, 'USD'),
    (3, 3, '1122334455', 'Savings', 7500, 'USD'),
    (4, 4, '2233445566', 'Checking', 1500, 'USD'),
    (5, 5, '3344556677', 'Savings', 3500, 'USD'),
    (6, 6, '4455667788', 'Checking', 4000, 'USD'),
    (7, 7, '5566778899', 'Savings', 9000, 'USD'),
    (8, 8, '6677889900', 'Checking', 1200, 'USD'),
    (9, 9, '7788990011', 'Savings', 6700, 'USD'),
    (10, 10, '8899001122', 'Checking', 5500, 'USD');

-- Insert transactions
INSERT INTO transactions (id, accountId, amount, type, date, description)
VALUES
    (1, 1, -200, 'debit', '2025-02-26', 'ATM Withdrawal'),
    (2, 2, 500, 'credit', '2025-02-25', 'Salary Deposit'),
    (3, 3, -50, 'debit', '2025-02-24', 'Shopping'),
    (4, 4, -100, 'debit', '2025-02-23', 'Groceries'),
    (5, 5, -25, 'debit', '2025-02-22', 'Online Purchase'),
    (6, 6, 1500, 'credit', '2025-02-21', 'Bonus Payment'),
    (7, 7, -350, 'debit', '2025-02-20', 'Dinner'),
    (8, 8, 1000, 'credit', '2025-02-19', 'Freelance Work'),
    (9, 9, -500, 'debit', '2025-02-18', 'Electricity Bill'),
    (10, 10, 200, 'credit', '2025-02-17', 'Gift from Friend');
