Imports System.Data.SqlClient
Partial Class _Default
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
        If Session("IsAdmin") = 1 Then
            Response.Redirect("Mainmenu.aspx")
        End If
      
        'Label3.Text = "Welcome :" + Session("UserName")
        'Label2.Text = "Your SMS Credits is  :" + Session("Points")
        Dim cmd As New SqlCommand()
        cmd.CommandText = "Select Points from Users where UserID=" + Session("UserID")
        '  Response.Write(cmd.CommandText)
        cmd.Connection = Conn
        Dim reader As SqlDataReader = cmd.ExecuteReader()

        If reader.Read Then
            Label1.Text = " Welcome : " + Session("userName") + "  *** Remain Messages (" + reader(0).ToString + ")"
            reader.Close()
        End If

    End Sub

    



    

    

    
    Protected Sub Button21_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button21.Click

    End Sub
End Class
