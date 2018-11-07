Const Overwrite = True
remoteHost = "\\41.202.173.93\myShare\BulkSmsDbBackup\"
sDestination = remoteHost
sSource = "C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\Backup\LCTBulkSMS.bak"

Wscript.Sleep 20000

Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.CopyFile sSource ,sDestination, Overwrite