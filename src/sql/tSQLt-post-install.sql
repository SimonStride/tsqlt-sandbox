EXEC tSQLt.InstallExternalAccessKey;
EXEC master.sys.sp_executesql N'GRANT UNSAFE ASSEMBLY TO [tSQLtExternalAccessKey]';
EXEC sp_configure 'clr strict security', 1;
RECONFIGURE;