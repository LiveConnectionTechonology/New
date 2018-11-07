Dim objFSO, objFolder, objShell, objTextFile, objFile
Dim strDirectory, strFile, strText
strDirectory = "c:\BulkSMSLog"
strFile = "\SMS_TEST_log.txt"


Set objFSO=CreateObject("Scripting.FileSystemObject")

If objFSO.FolderExists(strDirectory) Then
   Set objFolder = objFSO.GetFolder(strDirectory)
Else
   Set objFolder = objFSO.CreateFolder(strDirectory)
End If

If objFSO.FileExists(strDirectory & strFile) Then
   Set objFolder = objFSO.GetFolder(strDirectory)
Else
   Set objFile = objFSO.CreateTextFile(strDirectory & strFile)
End If 


set objFile = nothing
set objFolder = nothing
' OpenTextFile Method needs a Const value
' ForAppending = 8 ForReading = 1, ForWriting = 2
Const ForAppending = 8



Set objTextFile = objFSO.OpenTextFile _
(strDirectory & strFile, ForAppending, True)

Dim o

Set o =  CreateObject("MSXML2.ServerXMLHTTP")
o.open "GET", "http://192.168.66.252/webacc.aspx?user=lct&pwd=1&smstext=Hello&Sender=lct&Nums=249912314526", False
o.send
responseText = Mid(o.responseText,1,2)& "*" & Now & VbCrLf
objTextFile.WriteLine(responseText)
objTextFile.Close






