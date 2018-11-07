
--Show databases transaction log file recovery mode
--simple mode is required to minimize file size 
SELECT name, recovery_model_desc

FROM sys.databases


--------------------------------------------------------------------------------
--below query to fix LCTBULKSMS database transaction log size issue 
--execution of this query make db recovery mode (simple) not (full)
ALTER DATABASE LCTBulkSMS

SET RECOVERY SIMPLE