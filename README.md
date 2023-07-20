# Northwind Dashboard

![Main Dashboard 2022 by Month](https://github.com/fachrulghiffari/Northwind-Dashboard/assets/104657138/988322ec-81cb-46df-934d-f0e694a76850)

A dashboard that displays Sales and Customers data from the Northwind Database. This dashboard was created with Power BI. The Northwind data I used has gone through a process of changing the year and currency.
The process of creating a dashboard starts from the database in sql server, load the data into PostgreSQL, until the explanation of the metrics is explained in https://github.com/fachrulghiffari/Northwind-Dashboard/blob/main/Northwind%20Dashboard%20Presentation%20File.pdf.

## Files in this Repo
* Dashboard
  This file contains a Northwind Dashboard that has been created using Power BI.
* Database Backup
  This file contains database backup files that can be restored to SQL Server and PostgreSQL.
* Python
  Contains python code and library requirements used to load Northwind data from SQL Server to PostgreSQL in the cloud.
* Query
  This file contains a query to change the year in the date columns and UnitPrice column of the Northwind database in SQL Server and a query to change the data type in PostgreSQL.


## How to use it
You can directly use the dashboard in PowerBI by downloading it at https://github.com/fachrulghiffari/Northwind-Dashboard/blob/main/Dashboard/Northwind%20Dashboard.pbix.
The dashboard is already connected to a server in the cloud, so you can use it directly to either try it out or improve it further.

If you want to install the database on SQL Server/PostgreSQL:
1. Download the backup file at https://github.com/fachrulghiffari/Northwind-Dashboard/blob/main/Database%20Backup/SQL%20Server/Northwind.
2. Open database management tool that you usually use for SQL Server/PostgreSQL. Create a database with name "Northwind".
3. Restore database you created before with the backup file.
