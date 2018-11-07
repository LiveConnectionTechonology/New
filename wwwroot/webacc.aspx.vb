Imports System.Data.SqlClient
Imports System.IO


Partial Class webacc
    Inherits System.Web.UI.Page

    Private ReadOnly Property Conn() As SqlConnection
        Get
            Dim ConnectionToFetch As New SqlConnection("Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000")
            ConnectionToFetch.Open()
            Return ConnectionToFetch
        End Get
    End Property
    Public Shared Function IsUnicode(ByVal input As String) As Boolean
        Dim asciiBytesCount = Encoding.ASCII.GetByteCount(input)
        Dim unicodBytesCount = Encoding.UTF8.GetByteCount(input)
        Return asciiBytesCount <> unicodBytesCount
    End Function
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim SQLCmd As New Data.SqlClient.SqlCommand
        ' SQLCmd.CommandType = Data.StoredProcedure()
        SQLCmd.CommandTimeout = 6000
        SQLCmd.CommandText = "sp_CheckUserLogin '" + Request.QueryString("user").ToString + "','" + Request.QueryString("pwd").ToString + "'"

        SQLCmd.Connection = Conn 'Active Connection
        Dim RS As Data.SqlClient.SqlDataReader

        RS = SQLCmd.ExecuteReader()

        If RS.Read() And Request.QueryString("smstext").ToString <> "" Then


            Dim cmd As New SqlCommand()
            cmd.CommandTimeout = 6000
            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.CommandText = "sp_HTTPInsertBatchs"

            cmd.Parameters.AddWithValue("@Msg", Request.QueryString("smstext").ToString)
            If IsUnicode(Request.QueryString("smstext").ToString) Then
                cmd.Parameters.AddWithValue("@isUnicoe", 1)
            Else
                cmd.Parameters.AddWithValue("@isUnicoe", 0)
            End If
            cmd.Parameters.AddWithValue("@UserID", RS(0).ToString)
            cmd.Parameters.AddWithValue("@Sender", Request.QueryString("Sender").ToString)
            cmd.Parameters.AddWithValue("@MobileNumbers", Request.QueryString("Nums").ToString)
            Dim RS1 As Data.SqlClient.SqlDataReader

            cmd.Connection = Conn
            RS1 = cmd.ExecuteReader()


            If RS1.Read() And Request.QueryString("smstext").ToString <> "" Then
                Page.Title = ""
                Response.Write(RS1(0))
                cmd.Connection.Close()
                RS1.Close()
            End If
        Else
            Page.Title = ""
            Response.Write("Invalid")
        End If
        RS.Close()
        SQLCmd.Connection.Close()

    End Sub
End Class
