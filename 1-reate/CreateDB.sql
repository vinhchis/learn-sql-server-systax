CREATE DATABASE [Customer_DB] ON PRIMARY 
( 
	NAME = 'Customer_DBX', 
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Customer_DB.mdf') 
LOG ON 
( 
	NAME = 'Customer_DB_log', 
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Customer_DB_log.ldf'
) 
COLLATE SQL_Latin1_General_CP1_CI_AS 

