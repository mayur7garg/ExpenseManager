IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'ExpenseManager')
BEGIN
    CREATE DATABASE [ExpenseManager]
END
GO