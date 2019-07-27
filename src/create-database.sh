#wait for the SQL Server to come up
sleep 15s

echo "****************************************************************************************************"
echo "running set up script"
#run the setup script to create the DB and the schema in the DB
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P tSQLtSandbox1234 -d master -i ./sql/create-sandbox.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P tSQLtSandbox1234 -d Sandbox -i ./sql/tSQLt-pre-install.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P tSQLtSandbox1234 -d Sandbox -i ./tsqlt/tSQLt.class.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P tSQLtSandbox1234 -d Sandbox -i ./sql/tSQLt-post-install.sql