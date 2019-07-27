# tsqlt-sandbox

## About
tSQLt Unit Testing Framework preinstalled on a SQL Server 2017 Sandbox database [https://tsqlt.org/](https://tsqlt.org/)

For use in demos of tSQLt and as a POC for future tSQLt use cases

---

Simon Stride July 2019

---

## Release Notes

Version Number | Date | Author | Notes
--- | --- | --- | ---
1.0 | 27 July 2019 | Simon Stride | Initial Release

---

**Designed for use in dev scenarios only - not for use in production!!!**

## Notes

### Security: sa Account Password

sa password is currently hardcoded in the build scripts to 'tSQLtSandbox1234'

This password is used in the create-databases.sh shell script to run the installation scripts and should also be changed in the docker-compose file

### CLR Strict Security is temporarily disabled during setup

Starting with SQL Server 2017, a new configuration setting "CLR strict security" is included and enabled by default. 

While this is a positive, incremental security improvement, unfortunately this setting prevents CLR assemblies being installed - including tSQLt!

The setup scripts included disable (tSQLt-pre-install.sql) and re-enable (tSQLt-post-install.sql) the CLR Strict Security setting.