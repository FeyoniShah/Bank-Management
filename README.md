# Bank-Management

1. INTRODUCTION
• Purpose:
o Automates key banking operations like customer registration, account
management, loan processing, and transaction tracking.
o Provides efficient, secure, and scalable banking services integrated with Java and
MySQL.
• Scope:
o Designed for small to medium-sized banks.
o Key features:
▪ Customer and account management.

▪ Secure transactions (deposit, withdrawal, transfer).
▪ Loan application, repayment, and tracking.
▪ Mini-statements and transaction history.
o Ensures data consistency, integrity, and confidentiality with real-time data access.

2. OVERALL DESCRIPTION
• Product Perspective:
o Integrates Java-based backend logic with a MySQL database.
o Replaces manual banking systems by automating operations.
• Product Features:
o Customer Management: Register, view, and update customer details.
o Account Management: Open, manage, and close accounts with validations.

o Transaction Management: Deposit, withdraw, transfer funds, and generate mini-
statements.

o Loan Management: Apply for loans, track EMIs, and view history.
o Employee Management: Manage branch employees and their roles.
o Database Queries: Advanced SQL operations for data integrity and analysis.
• User Classes and Characteristics:
o Bank Manager: Supervises operations, approves loans, and generates reports.
o Teller: Handles customer registration and transactions.
o Customer: Uses the system for account services.
o Loan Officer: Processes loan applications and repayments.
• Design and Implementation Constraints:
o Backend: Java.
o Database: MySQL.
o Reliable internet connection required for multi-user scenarios.

3. FUNCTIONAL REQUIREMENTS
• Customer Management:
o Register new customers with unique email and phone validation.
o Update customer details like name, email, and phone.
• Account Management:
o Create savings or checking accounts linked to branches.
o Manage deposits, withdrawals, and transfers with overdraft support.
o Securely close accounts after ensuring zero balance.
• Transaction Management:
o Log all transactions in a Transactions table.
o Generate mini-statements for recent activities.
• Loan Management:

o Apply for personal, home, vehicle, or education loans.
o Track EMI repayments and loan statuses.
o View detailed loan history.
• Employee Management:
o Assign employees to specific branches.
o Maintain employee roles (e.g., Manager, Teller, Loan Officer).

4. NON-FUNCTIONAL REQUIREMENTS
• Performance:
o Handle up to 100 concurrent users.
o Log transactions within 1 second.
• Security:
o Prevent SQL injection using parameterized queries.
o Store passwords securely (e.g., hashing).
• Usability:
o Provide clear prompts and error messages for user actions.
o User-friendly console-based interface.
• Scalability:
o Extendable for new branches and employees.
o Capable of managing increasing transactions efficiently.

5. SYSTEM FEATURES
• Database Structure:
o Includes tables for Branches, Customers, Accounts, Transactions, Employees,
and Loans.
• Query Features:
o Advanced SQL (GROUP BY, JOIN, SUBQUERY, etc.) for reporting and analysis.
