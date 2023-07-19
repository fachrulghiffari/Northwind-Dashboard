# Import libraries
from sqlalchemy import create_engine
import pyodbc
import pandas as pd

# SQL db details
## Source database variable
driver = "{Driver for SQL Server}"
server_sqlserver = "SQL Server"
db_src = "Northwind"
uid_src = "SQL Server id"
pwd_src = "SQL Server pass"

## Target database variable
server_postgresql = "PostgreSQL server"
pass_postgresql = "PostgreSQL password"
user_postgresql = "PostgreSQL id"
database_postgresql = "Database name"

# Define a function to extract data from SQL Server
def extract():
    try:
        # Connect to SQL Server
        src_conn = pyodbc.connect(f'DRIVER={driver};SERVER={server_sqlserver}\SQLEXPRESS;DATABASE={db_src};UID={uid_src};PWD={pwd_src}')
        src_cursor = src_conn.cursor()
        # Execute query to select all table in Northwind Database on SQL Server except sysdiagrams
        src_cursor.execute("select  t.name as table_name"
                " from sys.tables t where t.name NOT IN ('sysdiagrams')")
        src_tables = src_cursor.fetchall()
        # Rename "Order Details" table to "[Order Details]" to avoid error while reading data
        src_tables[7][0] = src_tables[7][0] = '[Order Details]'

        # Iteration to load each table to PostgreSQL
        for tbl in src_tables:
        # Query and load save data to dataframe
            df = pd.read_sql_query(f'select * FROM {tbl[0]}', src_conn)
            # Call load function
            load(df, tbl[0])
    except Exception as e:
        print("Data extract error: " + str(e))
    finally:
        # Close connection from SQL Server
        src_conn.close()

# Define a function to load data to PostgreSQL
def load(df, tbl):
    try:
        rows_imported = 0
        # You can use the code below to connect by filling in the target database variable
        ## engine = create_engine(f'postgresql://{user_postgresql}:{pass_postgresql}@{server_postgresql}:5432/{database_postgresql}')
        engine = create_engine(f'database url')
        print(f'importing rows {rows_imported} to {rows_imported + len(df)}... for table {tbl}')
        # Rename '[Order Details]' table to 'Order Details'
        if tbl == '[Order Details]':
            df.to_sql(f'Order Details', engine, if_exists='replace', index=False)
            rows_imported += len(df)
            print("Data imported successful")
        else:
            df.to_sql(f'{tbl}', engine, if_exists='replace', index=False)
            rows_imported += len(df)
            print("Data imported successful")
    except Exception as e:
        print("Data load error: " + str(e))
    # Use this code below if your PostgreSQL has connection limits
""" finally:
        engine.dispose() """

try:
    # Call extract function
    extract()
except Exception as e:
    print("Error while extracting data: " + str(e))