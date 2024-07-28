DELETE FROM DimCustomer;
DELETE FROM DimDate;
DELETE FROM DimChannel;
DELETE FROM DimLoan;
DELETE FROM DimAccount;
DELETE FROM DimTransactionType;
DELETE FROM DimLocation;
DELETE FROM DimCurrency;
DELETE FROM DimInvestmentType;
DELETE FROM FactDailyBalances;
DELETE FROM FactCustomerInteractions;
DELETE FROM FactTransactions;
DELETE FROM FactInvestments;
DELETE FROM FactLoanPayments;

-- DimCustomer
INSERT INTO DimCustomer (customer_id, first_name, last_name, email, address, city, state, postal_code, phone_number)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123 Main St', 'Anytown', 'CA', '12345', '555-1234'),
(2, 'Jane', 'Doe', 'jane.doe@example.com', '456 Elm St', 'Othertown', 'NY', '67890', '555-5678'),
(3, 'Bob', 'Smith', 'bob.smith@example.com', '789 Oak St', 'Thirdtown', 'TX', '34567', '555-9012'),
(4, 'Alice', 'Johnson', 'alice.johnson@example.com', '321 Maple St', 'Fourthtown', 'FL', '90123', '555-1111'),
(5, 'Mike', 'Williams', 'mike.williams@example.com', '901 Pine St', 'Fifthtown', 'IL', '23456', '555-2222'),
(6, 'Emily', 'Davis', 'emily.davis@example.com', '234 Cedar St', 'Sixthtown', 'OH', '45678', '555-3333'),
(7, 'Tom', 'Miller', 'tom.miller@example.com', '567 Cypress St', 'Seventhtown', 'GA', '67890', '555-4444'),
(8, 'Sarah', 'Wilson', 'sarah.wilson@example.com', '890 Walnut St', 'Eighthtown', 'NC', '90123', '555-5555'),
(9, 'David', 'Anderson', 'david.anderson@example.com', '123 Spruce St', 'Ninthtown', 'MI', '23456', '555-6666'),
(10, 'Kate', 'Thomas', 'kate.thomas@example.com', '456 Fir St', 'Tenthtown', 'TN', '45678', '555-7777');

-- DimDate
INSERT INTO DimDate (date_id, date, day, month, year, quarter, weekday)
VALUES
(1, '2022-01-01', 1, 1, 2022, 1, 'Saturday'),
(2, '2022-01-02', 2, 1, 2022, 1, 'Sunday'),
(3, '2022-01-03', 3, 1, 2022, 1, 'Monday'),
(4, '2022-01-04', 4, 1, 2022, 1, 'Tuesday'),
(5, '2022-01-05', 5, 1, 2022, 1, 'Wednesday'),
(6, '2022-01-06', 6, 1, 2022, 1, 'Thursday'),
(7, '2022-01-07', 7, 1, 2022, 1, 'Friday'),
(8, '2022-01-08', 8, 1, 2022, 1, 'Saturday'),
(9, '2022-01-09', 9, 1, 2022, 1, 'Sunday'),
(10, '2022-01-10', 10, 1, 2022, 1, 'Monday');

-- DimChannel
INSERT INTO DimChannel (channel_id, channel_name)
VALUES
(1, 'Online'),
(2, 'Phone'),
(3, 'In-Person'),
(4, 'Mobile'),
(5, 'Email'),
(6, 'Social Media'),
(7, 'Chat'),
(8, 'Video Conference'),
(9, 'Messaging App'),
(10, 'Other');

-- DimLoan
INSERT INTO DimLoan (loan_id, loan_type, loan_amount, interest_rate)
VALUES
(1, 'Personal Loan', 10000.00, 6.00),
(2, 'Mortgage', 200000.00, 4.00),
(3, 'Auto Loan', 30000.00, 5.00),
(4, 'Student Loan', 40000.00, 3.00),
(5, 'Business Loan', 50000.00, 7.00),
(6, 'Home Equity Loan', 60000.00, 5.50),
(7, 'Credit Card', 7000.00, 18.00),
(8, 'Line of Credit', 80000.00, 6.50),
(9, 'Construction Loan', 90000.00, 5.00),
(10, 'Agricultural Loan', 10000.00, 15.05);
-- DimAccount
INSERT INTO DimAccount (account_id, account_number, customer_id, account_type, account_balance, credit_score)
VALUES
  (1, '1234567890', 1, 'Checking', 1000.00, 700),
  (2, '9876543210', 2, 'Savings', 5000.00, 800),
  (3, '1111111111', 3, 'Credit Card', 2000.00, 600),
  (4, '2222222222', 4, 'Loan', 10000.00, 500),
  (5, '3333333333', 5, 'Investment', 50000.00, 900),
  (6, '4444444444', 6, 'Checking', 2000.00, 650),
  (7, '5555555555', 7, 'Savings', 10000.00, 850),
  (8, '6666666666', 8, 'Credit Card', 3000.00, 550),
  (9, '7777777777', 9, 'Loan', 20000.00, 450),
  (10, '8888888888', 10, 'Investment', 100000.00, 950);

-- DimTransactionType
INSERT INTO DimTransactionType (txn_type_id, description)
VALUES
  (1, 'Deposit'),
  (2, 'Withdrawal'),
  (3, 'Transfer'),
  (4, 'Payment'),
  (5, 'Purchase'),
  (6, 'Sale'),
  (7, 'Credit'),
  (8, 'Debit'),
  (9, 'Interest'),
  (10, 'Fees');

-- DimLocation
INSERT INTO DimLocation (location_id, address, city, state, country)
VALUES
  (1, '123 Main St', 'New York', 'NY', 'USA'),
  (2, '456 Elm St', 'Los Angeles', 'CA', 'USA'),
  (3, '789 Oak St', 'Chicago', 'IL', 'USA'),
  (4, '321 Maple St', 'Houston', 'TX', 'USA'),
  (5, '901 Broadway', 'Phoenix', 'AZ', 'USA'),
  (6, '234 Pine St', 'Philadelphia', 'PA', 'USA'),
  (7, '567 Cedar St', 'San Antonio', 'TX', 'USA'),
  (8, '890 Walnut St', 'San Diego', 'CA', 'USA'),
  (9, '345 Spruce St', 'Dallas', 'TX', 'USA'),
  (10, '678 Fir St', 'San Jose', 'CA', 'USA');

-- DimCurrency
INSERT INTO DimCurrency (currency_id, name, iso3_code, active)
VALUES
  (1, 'US Dollar', 'USD', 'Y'),
  (2, 'Euro', 'EUR', 'Y'),
  (3, 'British Pound', 'GBP', 'Y'),
  (4, 'Japanese Yen', 'JPY', 'Y'),
  (5, 'Chinese Renminbi', 'CNY', 'Y'),
  (6, 'Indian Rupee', 'INR', 'Y'),
  (7, 'Brazilian Real', 'BRL', 'Y'),
  (8, 'Canadian Dollar', 'CAD', 'Y'),
  (9, 'Swiss Franc', 'CHF', 'Y'),
  (10, 'Australian Dollar', 'AUD', 'Y');

-- DimInvestmentType
INSERT INTO DimInvestmentType (investment_type_id, investment_type_name)
VALUES
  (1, 'Stocks'),
  (2, 'Bonds'),
  (3, 'Mutual Funds'),
  (4, 'Exchange-Traded Funds (ETFs)'),
  (5, 'Real Estate Investment Trusts (REITs)'),
  (6, 'Commodities'),
  (7, 'Currencies'),
  (8, 'Options'),
  (9, 'Futures'),
  (10, 'Hedge Funds');

-- FactTransactions
INSERT INTO FactTransactions (transaction_id, customer_id, txn_date, channel_id, loan_id, account_id, txn_type_id, location_id, currency_id, investment_type_id, txn_amount, txn_status)
VALUES
  (1, 1, 1, 1, NULL, 1, 1, 1, 1, NULL, 100.00, 'Success'),
  (2, 2, 2, 2, NULL, 2, 2, 2, 2, NULL, 200.00, 'Success'),
  (3, 3, 3, 3, 1, 3, 3, 3, 3, NULL, 300.00, 'Success'),
  (4, 4, 4, 4, NULL, 4, 4, 4, 4, NULL, 400.00, 'Success'),
  (5, 5, 5, 5, NULL, 5, 5, 5, 5, 1, 500.00, 'Success'),
  (6, 6, 6, 6, NULL, 6, 6, 6, 6, NULL, 600.00, 'Success'),
  (7, 7, 7, 7, 2, 7, 7, 7, 7, NULL, 700.00, 'Success'),
  (8, 8, 8, 8, NULL, 8, 8, 8, 8, NULL, 800.00, 'Success'),
  (9, 9, 9, 9, NULL, 9, 9, 9, 9, NULL, 900.00, 'Success'),
  (10, 10, 10, 10, NULL, 10, 10, 10, 10, 2, 1000.00, 'Success');

-- FactDailyBalances
INSERT INTO FactDailyBalances (balance_id, date_id, account_id, opening_balance, closing_balance, average_balance)
VALUES
  (1, 1, 1, 1000.00, 1100.00, 1050.00),
  (2, 2, 2, 2000.00, 2200.00, 2100.00),
  (3, 3, 3, 3000.00, 3300.00, 3150.00),
  (4, 4, 4, 4000.00, 4400.00, 4200.00),
  (5, 5, 5, 5000.00, 5500.00, 5250.00),
  (6, 6, 6, 6000.00, 6600.00, 6300.00),
  (7, 7, 7, 7000.00, 7700.00, 7350.00),
  (8, 8, 8, 8000.00, 8800.00, 8400.00),
  (9, 9, 9, 9000.00, 9900.00, 9450.00),
  (10, 10, 10, 10000.00, 11000.00, 10500.00);

-- FactCustomerInteractions
INSERT INTO FactCustomerInteractions (interaction_id, date_id, account_id, channel_id, interaction_type, interaction_rating)
VALUES
  (1, 1, 1, 1, 'Phone Call', 5),
  (2, 2, 2, 2, 'Email', 4),
  (3, 3, 3, 3, 'In-Person Meeting', 5),
  (4, 4, 4, 4, 'Social Media Message', 3),
  (5, 5, 5, 5, 'Online Chat', 4),
  (6, 6, 6, 6, 'Video Conference', 5),
  (7, 7, 7, 7, 'Messaging App', 4),
  (8, 8, 8, 8, 'Other', 3),
  (9, 9, 9, 9, 'Phone Call', 5),
  (10, 10, 10, 10, 'Email', 4);

-- FactLoanPayments
INSERT INTO FactLoanPayments (payment_id, date_id, loan_id, customer_id, payment_amount, payment_status)
VALUES
  (1, 1, 1, 3, 500.00, 'Paid'),
  (2, 2, 2, 7, 1000.00, 'Paid'),
  (3, 3, 1, 3, 500.00, 'Paid'),
  (4, 4, 3, 9, 2000.00, 'Paid'),
  (5, 5, 2, 7, 1000.00, 'Paid'),
  (6, 6, 4, 4, 3000.00, 'Paid'),
  (7, 7, 1, 3, 500.00, 'Paid'),
  (8, 8, 5, 10, 4000.00, 'Paid'),
  (9, 9, 3, 9, 2000.00, 'Paid'),
  (10, 10, 2, 7, 1000.00, 'Paid');

-- FactInvestments
INSERT INTO FactInvestments (investment_id, date_id, investment_type_id, account_id, amount_invested, investment_return)
VALUES
  (1, 1, 1, 5, 1000.00, 50.00),
  (2, 2, 2, 10, 2000.00, 100.00),
  (3, 3, 1, 5, 1500.00, 75.00),
  (4, 4, 3, 9, 3000.00, 150.00),
  (5, 5, 2, 10, 2500.00, 125.00),
  (6, 6, 4, 4, 4000.00, 200.00),
  (7, 7, 1, 5, 2000.00, 100.00),
  (8, 8, 5, 7, 5000.00, 250.00),
  (9, 9, 3, 9, 3500.00, 175.00),
  (10, 10, 2, 10, 3000.00, 150.00);