Imports System.Data.SqlClient
Partial Class Mainmenu
    Inherits System.Web.UI.Page
    Private ReadOnly Property Conn() As SqlConnection
        Get
            Dim ConnectionToFetch As New SqlConnection("Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000")
            ConnectionToFetch.Open()
            Return ConnectionToFetch
        End Get
    End Property

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("UserID") = "" Then
            Session.Clear()
            Response.Redirect("index.aspx")
        End If
        Label1.Text = "Welcome Adminstrator : " + Session("UserName")
        Dim cmd As New SqlCommand()

        cmd.CommandText = "SELECT Count(*)  FROM Batchs where points<>0 and status=0"
        '  Response.Write(cmd.CommandText)
        cmd.Connection = Conn
        Dim reader As SqlDataReader = cmd.ExecuteReader()

        If reader.Read Then

            LinkButton6.Text = "New Requests (" + reader(0).ToString + ")"
        End If
    End Sub

    Protected Sub LinkButton6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton6.Click

    End Sub

    
End Class
