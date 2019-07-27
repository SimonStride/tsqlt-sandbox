IF NOT EXISTS(SELECT * FROM sys.databases WHERE name  = 'Sandbox')
    BEGIN
        CREATE DATABASE Sandbox
        EXEC sp_defaultdb 'sa', 'Sandbox'
    END