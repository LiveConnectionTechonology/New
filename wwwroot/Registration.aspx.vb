Imports System.Data.SqlClient
Partial Class Registration
    Inherits System.Web.UI.Page
    Private ReadOnly Property Conn() As SqlConnection
        Get
            Dim ConnectionToFetch As New SqlConnection("Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000")
            ConnectionToFetch.Open()
            Return ConnectionToFetch
        End Get
    End Property
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If txtFulName.Text <> "" And txtPassword.Text <> "" And txtPhone.Text <> "" And txtUserName.Text <> "" Then

            If CheckBox1.Checked Then
                Dim cmd As New SqlCommand
                cmd.Connection = Conn
                cmd.CommandType = Data.CommandType.StoredProcedure
                cmd.CommandText = "sp_InsertUsers"
                cmd.Parameters.AddWithValue("@UserFullName", txtFulName.Text)
                cmd.Parameters.AddWithValue("@UserName", txtUserName.Text)
                cmd.Parameters.AddWithValue("@Pwd", txtPassword.Text)
                cmd.Parameters.AddWithValue("@SenderName", txtSenderName.Text)
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text)
                cmd.Parameters.AddWithValue("@IsActive", 0)
                cmd.Parameters.AddWithValue("@SMPP", 0)
                cmd.Parameters.AddWithValue("@IsTrust", 0)
                cmd.Parameters.AddWithValue("@Phone", txtPhone.Text)
                cmd.Parameters.AddWithValue("@IsMMS", 0)
                cmd.Parameters.AddWithValue("@IsHTTP", 0)
                cmd.Parameters.AddWithValue("@AdminID", 0)

                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('Regisration Complete')</script>")
                btnNew_Click(sender, e)
                Page_Load(sender, e)
            Else
                Response.Write("<script>alert('You must Agree')</script>")
            End If
        Else
            Response.Write("<script>alert('You must fill all fields')</script>")
        End If

    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        txtEmail.Text = ""
        txtFulName.Text = ""
        txtPassword.Text = ""
        txtPhone.Text = ""
        txtSenderName.Text = ""
        txtUserName.Text = ""
        CheckBox1.Checked = True
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        btnNew_Click(sender, e)
    End Sub
End Class
