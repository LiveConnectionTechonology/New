
Partial Class Download
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strRequest As String = Request.QueryString("file") '-- if something was passed to the file querystring
        If strRequest <> "" Then 'get absolute path of the file
            Dim path As String = Server.MapPath(strRequest) 'get file object as FileInfo
            Dim file As System.IO.FileInfo = New System.IO.FileInfo(path) '-- if the file exists on the server
            If file.Exists Then 'set appropriate headers
                Response.Clear()
                Response.AddHeader("Content-Disposition", "attachment; filename=" & file.Name)
                Response.AddHeader("Content-Length", file.Length.ToString())
                Response.ContentType = "application/octet-stream"
                Response.WriteFile(file.FullName)
                Response.End() 'if file does not exist
            Else
                Response.Write("This file does not exist.")
            End If 'nothing in the URL as HTTP GET
        Else
            Response.Write("Please provide a file to download.")
        End If
    End Sub
End Class
