CREATE TABLE DimCustomer (
	customer_id int PRIMARY KEY,
	first_name char(50) NOT NULL,
	last_name char(50) NOT NULL,
	email char(50) NOT NULL,
	address char(255) NOT NULL,
	city char(50) NOT NULL,
	state char(50) NOT NULL,
	postal_code char(10) NOT NULL,
	phone_number char(50) NOT NULL
);
CREATE TABLE DimDate (
	date_id int PRIMARY KEY,
	date date NOT NULL,
	day int NOT NULL,
	month int NOT NULL,
	year int NOT NULL,
	quarter int NOT NULL,
	weekday char(15) NOT NULL
);
CREATE TABLE DimChannel (
	channel_id int PRIMARY KEY,
	channel_name char(255) NOT NULL
);
CREATE TABLE DimLoan (
	loan_id int PRIMARY KEY,
	loan_type char(50) NOT NULL,
	loan_amount decimal(18,2) NOT NULL,
	interest_rate decimal(10,2) NOT NULL
);
CREATE TABLE DimAccount (
	account_id int PRIMARY KEY,
	account_number char(10) NOT NULL,
	customer_id int NOT NULL,
	account_type char(30) NOT NULL,
	account_balance decimal(18,2) NOT NULL,
	credit_score int NOT NULL
);
CREATE TABLE DimTransactionType (
	txn_type_id int PRIMARY KEY,
	description char(255) NOT NULL
);
CREATE TABLE DimLocation (
	location_id int PRIMARY KEY,
	address char(255) NOT NULL,
	city char(50) NOT NULL,
	state char(50) NOT NULL,
	country char(50) NOT NULL
);
CREATE TABLE DimCurrency (
	currency_id int PRIMARY KEY,
	name char(255) NOT NULL,
	iso3_code char(3) NOT NULL,
	active char(1) NOT NULL
);
CREATE TABLE DimInvestmentType (
	investment_type_id int PRIMARY KEY,
	investment_type_name char(255) NOT NULL
);
CREATE TABLE FactTransactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    txn_date INT NOT NULL,
    channel_id INT NOT NULL,
    loan_id INT,
    account_id INT NOT NULL,
    txn_type_id INT NOT NULL,
    location_id INT NOT NULL,
    currency_id INT NOT NULL,
    investment_type_id INT,
    txn_amount DECIMAL(18,2) NOT NULL,
	txn_status char(15),
	FOREIGN KEY (customer_id) REFERENCES DimCustomer(customer_id),
	FOREIGN KEY (txn_date) REFERENCES DimDate(date_id ),
	FOREIGN KEY (channel_id) REFERENCES DimChannel(channel_id),
	FOREIGN KEY (loan_id) REFERENCES DimLoan(loan_id),
	FOREIGN KEY (account_id) REFERENCES DimAccount(account_id),
	FOREIGN KEY (txn_type_id) REFERENCES DimTransactionType(txn_type_id),
	FOREIGN KEY (location_id) REFERENCES DimLocation(location_id),
	FOREIGN KEY (currency_id) REFERENCES DimCurrency(currency_id),
	FOREIGN KEY (investment_type_id) REFERENCES DimInvestmentType(investment_type_id)
);
CREATE TABLE FactDailyBalances (
	balance_id int PRIMARY KEY,
	date_id int NOT NULL,
	account_id int NOT NULL,
	opening_balance decimal(18,2) NOT NULL,
	closing_balance decimal(18,2) NOT NULL,
	average_balance decimal(18,2) NOT NULL,
	FOREIGN KEY (date_id) REFERENCES DimDate(date_id),
	FOREIGN KEY (account_id) REFERENCES DimAccount(account_id)
);
CREATE TABLE FactCustomerInteractions (
	interaction_id int PRIMARY KEY,
	date_id int NOT NULL,
	account_id int NOT NULL,
	channel_id int NOT NULL,
	interaction_type char(50),
	interaction_rating int,
	FOREIGN KEY (date_id) REFERENCES DimDate(date_id),
	FOREIGN KEY (account_id) REFERENCES DimAccount(account_id),
	FOREIGN KEY (channel_id) REFERENCES DimChannel(channel_id)
);
CREATE TABLE FactLoanPayments (
	payment_id int PRIMARY KEY,
	date_id int NOT NULL,
	loan_id int NOT NULL,
	customer_id int NOT NULL,
	payment_amount  decimal(18,2) NOT NULL,
	payment_status char(50),
	FOREIGN KEY (date_id) REFERENCES DimDate(date_id),
	FOREIGN KEY (loan_id) REFERENCES DimLoan(loan_id),
	FOREIGN KEY (customer_id) REFERENCES DimCustomer(customer_id)
);
CREATE TABLE FactInvestments (
	investment_id int PRIMARY KEY,
	date_id int NOT NULL,
	investment_type_id int NOT NULL,
	account_id int NOT NULL,
	amount_invested decimal(18,2),
	investment_return decimal(18,2),
	FOREIGN KEY (date_id) REFERENCES DimDate(date_id),
	FOREIGN KEY (investment_type_id) REFERENCES DimInvestmentType(investment_type_id),
	FOREIGN KEY (account_id) REFERENCES DimAccount(account_id)
);