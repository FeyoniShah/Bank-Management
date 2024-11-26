-- Find customers born between 1990 and 1995.
SELECT customer_id, first_name, last_name, dob
 FROM Customers
 WHERE dob BETWEEN '1990-01-01' AND '1995-12-31';


--Find employees with email domains as "gmail.com".
 SELECT employee_id, first_name, email
 FROM Employees
 WHERE email LIKE '%@gmail.com';



-- Retrieve transactions that occurred in the last 7 days.
 SELECT transaction_id, account_id, transaction_date
 FROM Transactions
 WHERE transaction_date >= CURDATE() - INTERVAL 7 DAY;


-- List all branches ordered by branch name.
 SELECT branch_id, branch_name
 FROM Branches
 ORDER BY branch_name ASC;


-- Count the number of accounts in each branch.
 SELECT branch_id, COUNT(account_id) AS account_count
 FROM Accounts
 GROUP BY branch_id;



-- Generate all possible employee-branch combinations (Cartesian Product).
SELECT e.first_name AS employee_name, b.branch_name
FROM Employees e, Branches b;


-- Retrieve account details with corresponding customer names.
 SELECT a.account_id, c.first_name, c.last_name, a.balance
 FROM Accounts a
JOIN Customers c ON a.customer_id = c.customer_id;


-- Retrieve all branches, even those without employees.
 SELECT b.branch_name, e.first_name AS employee_name
 FROM Branches b
 LEFT JOIN Employees e ON b.branch_id = e.branch_id;


-- Retrieve all employees, even those without branches.
 SELECT e.first_name, b.branch_name
 FROM Employees e
 RIGHT JOIN Branches b ON e.branch_id = b.branch_id;


-- Find accounts with a balance above the average balance.
 SELECT account_id, balance
 FROM Accounts
WHERE balance > (SELECT AVG(balance) FROM Accounts);


-- Create a view to display branch-wise total deposits.
 CREATE VIEW BranchDeposits AS
 SELECT branch_id, SUM(balance) AS total_balance
 FROM Accounts
 GROUP BY branch_id;


-- Create a trigger to log deleted customer details to a separate table.
 CREATE TRIGGER after_customer_delete
AFTER DELETE ON Customers
 FOR EACH ROW
 INSERT INTO DeletedCustomers (customer_id, first_name, last_name)
 VALUES (OLD.customer_id, OLD.first_name, OLD.last_name);


-- Create a view of active loans.
 CREATE VIEW ActiveLoans AS

 SELECT l.loan_id, c.first_name, l.amount
 FROM Loans l
 JOIN Customers c ON l.customer_id = c.customer_id
 WHERE l.status = 'active';