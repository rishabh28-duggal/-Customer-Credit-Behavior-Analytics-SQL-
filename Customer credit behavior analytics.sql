CREATE DATABASE customer_credit_transactions;

USE customer_credit_transactions;
CREATE TABLE customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    City VARCHAR(50),
    CreditScore INT
);

CREATE TABLE credit_cards (
    CardID INT PRIMARY KEY,
    CustomerID INT,
    CardType VARCHAR(20),
    CreditLimit DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)
);

CREATE TABLE transactions (
    TransactionID INT PRIMARY KEY,
    CustomerID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    MerchantCategory VARCHAR(50),
    TransactionType VARCHAR(10),
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)
);

-- Adding data to customers
INSERT INTO customers VALUES (1, 'Aman Sharma', 33, 'Delhi', 671);
INSERT INTO customers VALUES (2, 'Riya Kapoor', 50, 'Delhi', 620);
INSERT INTO customers VALUES (3, 'Aditya Mehra', 36, 'Pune', 719);
INSERT INTO customers VALUES (4, 'Neha Singh', 40, 'Mumbai', 676);
INSERT INTO customers VALUES (5, 'Raj Verma', 50, 'Bangalore', 666);
INSERT INTO customers VALUES (6, 'Simran Kaur', 42, 'Delhi', 654);
INSERT INTO customers VALUES (7, 'Vikram Desai', 45, 'Mumbai', 662);
INSERT INTO customers VALUES (8, 'Pooja Rao', 50, 'Kolkata', 736);
INSERT INTO customers VALUES (9, 'Kunal Joshi', 47, 'Bangalore', 667);
INSERT INTO customers VALUES (10, 'Tanvi Iyer', 36, 'Hyderabad', 676);

-- Adding data to credit cards
INSERT INTO credit_cards VALUES (101, 1, 'Silver', 51609);
INSERT INTO credit_cards VALUES (102, 2, 'Platinum', 204777);
INSERT INTO credit_cards VALUES (103, 3, 'Platinum', 249354);
INSERT INTO credit_cards VALUES (104, 4, 'Gold', 132655);
INSERT INTO credit_cards VALUES (105, 5, 'Gold', 144487);
INSERT INTO credit_cards VALUES (106, 6, 'Gold', 142047);
INSERT INTO credit_cards VALUES (107, 7, 'Silver', 75627);
INSERT INTO credit_cards VALUES (108, 8, 'Silver', 61653);
INSERT INTO credit_cards VALUES (109, 9, 'Silver', 50156);
INSERT INTO credit_cards VALUES (110, 10, 'Platinum', 224932);

-- Adding data to transactions
INSERT INTO transactions VALUES (1000, 3, '2025-07-17', 88833, 'Gambling', 'Debit');
INSERT INTO transactions VALUES (1001, 4, '2025-07-09', 88332, 'Jewelry', 'Debit');
INSERT INTO transactions VALUES (1002, 10, '2025-07-30', 97774, 'Travel', 'Debit');
INSERT INTO transactions VALUES (1003, 10, '2025-07-07', 44660, 'Dining', 'Debit');
INSERT INTO transactions VALUES (1004, 4, '2025-07-14', 42165, 'Electronics', 'Debit');
INSERT INTO transactions VALUES (1005, 1, '2025-07-10', 10363, 'Travel', 'Debit');
INSERT INTO transactions VALUES (1006, 4, '2025-07-05', 72937, 'Jewelry', 'Debit');
INSERT INTO transactions VALUES (1007, 2, '2025-07-11', 38875, 'Travel', 'Debit');
INSERT INTO transactions VALUES (1008, 4, '2025-07-28', 6088, 'Education', 'Debit');
INSERT INTO transactions VALUES (1009, 7, '2025-07-19', 92582, 'Electronics', 'Debit');
INSERT INTO transactions VALUES (1010, 4, '2025-07-17', 15769, 'Groceries', 'Debit');
INSERT INTO transactions VALUES (1011, 7, '2025-07-05', 19588, 'Gambling', 'Debit');
INSERT INTO transactions VALUES (1012, 5, '2025-07-17', 12090, 'Dining', 'Debit');
INSERT INTO transactions VALUES (1013, 4, '2025-07-11', 89318, 'Gambling', 'Debit');
INSERT INTO transactions VALUES (1014, 3, '2025-07-01', 33841, 'Education', 'Debit');
INSERT INTO transactions VALUES (1015, 9, '2025-07-19', 37120, 'Electronics', 'Debit');
INSERT INTO transactions VALUES (1016, 6, '2025-07-24', 43644, 'Education', 'Debit');
INSERT INTO transactions VALUES (1017, 7, '2025-07-06', 6144, 'Electronics', 'Debit');
INSERT INTO transactions VALUES (1018, 7, '2025-07-08', 72937, 'Healthcare', 'Debit');
INSERT INTO transactions VALUES (1019, 2, '2025-07-27', 82554, 'Groceries', 'Debit');
INSERT INTO transactions VALUES (1020, 2, '2025-07-24', 81570, 'Jewelry', 'Debit');
INSERT INTO transactions VALUES (1021, 10, '2025-07-17', 63999, 'Education', 'Debit');
INSERT INTO transactions VALUES (1022, 3, '2025-07-14', 44186, 'Travel', 'Debit');
INSERT INTO transactions VALUES (1023, 2, '2025-07-31', 65437, 'Gambling', 'Debit');
INSERT INTO transactions VALUES (1024, 3, '2025-07-14', 16671, 'Groceries', 'Debit');
INSERT INTO transactions VALUES (1025, 1, '2025-07-13', 18837, 'Dining', 'Debit');
INSERT INTO transactions VALUES (1026, 7, '2025-07-16', 65660, 'Education', 'Debit');
INSERT INTO transactions VALUES (1027, 8, '2025-07-21', 81207, 'Healthcare', 'Debit');
INSERT INTO transactions VALUES (1028, 8, '2025-07-26', 40850, 'Groceries', 'Debit');
INSERT INTO transactions VALUES (1029, 3, '2025-07-04', 72595, 'Dining', 'Debit');
INSERT INTO transactions VALUES (1030, 8, '2025-07-12', 92874, 'Electronics', 'Debit');
INSERT INTO transactions VALUES (1031, 3, '2025-07-06', 32027, 'Jewelry', 'Debit');
INSERT INTO transactions VALUES (1032, 5, '2025-07-28', 1978, 'Jewelry', 'Debit');
INSERT INTO transactions VALUES (1033, 7, '2025-07-03', 95663, 'Dining', 'Debit');
INSERT INTO transactions VALUES (1034, 8, '2025-07-29', 93402, 'Groceries', 'Debit');
INSERT INTO transactions VALUES (1035, 9, '2025-07-09', 11543, 'Jewelry', 'Debit');
INSERT INTO transactions VALUES (1036, 5, '2025-07-31', 76816, 'Groceries', 'Debit');
INSERT INTO transactions VALUES (1037, 5, '2025-07-07', 3630, 'Jewelry', 'Debit');
INSERT INTO transactions VALUES (1038, 6, '2025-07-31', 71296, 'Electronics', 'Debit');
INSERT INTO transactions VALUES (1039, 9, '2025-07-27', 19032, 'Electronics', 'Debit');
INSERT INTO transactions VALUES (1040, 5, '2025-07-06', 70285, 'Education', 'Debit');
INSERT INTO transactions VALUES (1041, 9, '2025-07-29', 53102, 'Healthcare', 'Debit');
INSERT INTO transactions VALUES (1042, 5, '2025-07-10', 45970, 'Electronics', 'Debit');
INSERT INTO transactions VALUES (1043, 4, '2025-07-16', 81160, 'Jewelry', 'Debit');
INSERT INTO transactions VALUES (1044, 9, '2025-07-30', 15875, 'Healthcare', 'Debit');
INSERT INTO transactions VALUES (1045, 7, '2025-07-23', 72775, 'Healthcare', 'Debit');
INSERT INTO transactions VALUES (1046, 3, '2025-07-20', 94742, 'Groceries', 'Debit');
INSERT INTO transactions VALUES (1047, 2, '2025-07-21', 49858, 'Gambling', 'Debit');
INSERT INTO transactions VALUES (1048, 2, '2025-07-01', 21250, 'Groceries', 'Debit');
INSERT INTO transactions VALUES (1049, 8, '2025-07-19', 57953, 'Jewelry', 'Debit');

-- 1. Monthly Spend per Customer
SELECT 
    c.Name,
    MONTH(t.TransactionDate) AS Month,
    SUM(t.Amount) AS TotalMonthlySpend
FROM transactions t
JOIN customers c ON t.CustomerID = c.CustomerID
GROUP BY c.Name, MONTH(t.TransactionDate)
ORDER BY c.Name, Month;

-- 2. High-Risk Transactions (Gambling/Jewelry > 50K)
SELECT 
    t.TransactionID,
    c.Name,
    t.Amount,
    t.MerchantCategory,
    t.TransactionDate
FROM transactions t
JOIN customers c ON t.CustomerID = c.CustomerID
WHERE 
    t.MerchantCategory IN ('Gambling', 'Jewelry')
    AND t.Amount > 50000
ORDER BY t.Amount DESC;

-- 3. Credit Utilization per Customer
SELECT 
    c.Name,
    cr.CreditLimit,
    ROUND(SUM(t.Amount) / cr.CreditLimit * 100, 2) AS CreditUtilizationPercent
FROM transactions t
JOIN customers c ON t.CustomerID = c.CustomerID
JOIN credit_cards cr ON c.CustomerID = cr.CustomerID
GROUP BY c.Name, cr.CreditLimit
ORDER BY CreditUtilizationPercent DESC;

-- 4. Top 5 Spending Customers
SELECT 
    c.Name,
    c.City,
    SUM(t.Amount) AS TotalSpent
FROM transactions t
JOIN customers c ON t.CustomerID = c.CustomerID
GROUP BY c.Name, c.City
ORDER BY TotalSpent DESC
LIMIT 5;

-- 5. Customer Segmentation by Credit Score
SELECT 
    Name,
    CreditScore,
    CASE 
        WHEN CreditScore < 620 THEN 'High Risk'
        WHEN CreditScore BETWEEN 620 AND 700 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS RiskCategory
FROM customers;

-- 6. Total Spending by Merchant Category
SELECT 
    MerchantCategory,
    COUNT(*) AS NumTransactions,
    SUM(Amount) AS TotalSpent
FROM transactions
GROUP BY MerchantCategory
ORDER BY TotalSpent DESC;
