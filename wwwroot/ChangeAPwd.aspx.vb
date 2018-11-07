
Imports System.Data.SqlClient
    Partial Class ChangeAPwd
        Inherits System.Web.UI.Page
        Private ReadOnly Property Conn() As SqlConnection
            Get
            Dim ConnectionToFetch As New SqlConnection("Data Source=;Initial Catalog=LCTBulkSMS;User ID=sa;password=Sms123$")
            ConnectionToFetch.Open()
                Return ConnectionToFetch
            End Get
        End Property
        Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

            Label1.Visible = True
            If TextBox2.Text = "" Then
                Label1.Text = ("You must select password")
                Exit Sub
            End If
            Dim cmd As New SqlCommand()
            cmd.CommandText = "Select * from Users where UserID=" + Session("UserID") + " and PWD=" + TextBox1.Text

            '  Response.Write(cmd.CommandText)
            cmd.Connection = Conn
            Dim reader As SqlDataReader = cmd.ExecuteReader()
            If reader.Read Then
                If TextBox2.Text = TextBox3.Text And TextBox2.Text <> "" Then
                    reader.Close()
                    cmd.CommandText = "Update Users set PWD=" + TextBox2.Text + " where UserID=" + Session("UserID")
                    cmd.ExecuteNonQuery()
                    Response.Write("<script>alert('Password Changed')</script>")
                Response.Redirect("index.aspx")
                Else
                    Label1.Text = "New password dose not match with re_password box value"
                End If
            Else
                Label1.Text = "Old password is not correcy"
            End If
        End Sub

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("UserID") = "" Then
            Session.Clear()
            Response.Redirect("index.aspx")
        End If

        'Label2.Text = " : " + Session("userName")
        Label1.Visible = False
        ' If Session("IsAdmin") = "Agent" Then
        ''LinkButton11.Text = LinkButton20.Text
        'LinkButton11.PostBackUrl = LinkButton20.PostBackUrl
        'LinkButton12.Visible = False
        'LinkButton16.Visible = False
        'LinkButton17.Visible = False
        'LinkButton18.Visible = False
        'LinkButton19.Visible = False
        'LinkButton20.Visible = False

        'End If
    End Sub



    
    End Class
