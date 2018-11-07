
Partial Class Index
    Inherits System.Web.UI.Page







    Protected Sub Login1_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate
        Dim SQLCon As New Data.SqlClient.SqlConnection
        SQLCon.ConnectionString = "Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000"
        SQLCon.Open()
        Dim SQLCmd As New Data.SqlClient.SqlCommand
        ' SQLCmd.CommandType = Data.StoredProcedure()
        SQLCmd.CommandText = "sp_CheckUserLogin '" + Login1.UserName.ToString + "','" + Login1.Password.ToString + "'"

        SQLCmd.Connection = SQLCon 'Active Connection
        Dim RS As Data.SqlClient.SqlDataReader


        RS = SQLCmd.ExecuteReader()

        If RS.Read() Then
            Session("UserName") = RS.GetValue(1).ToString
            Session("UserID") = RS.GetValue(0).ToString
            Session("IsAdmin") = RS.GetValue(7).ToString
            Session("IsTrust") = RS.GetValue(11).ToString
            Session("Points") = RS.GetValue(5).ToString
            Session("DSender") = RS.GetValue(6).ToString
            Session("IsMMS") = RS.GetValue(14).ToString
            Session("AdminID") = RS.GetValue(16).ToString

            If Session("IsAdmin") = "0" Then
                Response.Redirect("MainAgent.aspx")
            Else
                Response.Redirect("MainMenu.aspx")
            End If

            'Else
            '   Response.Write("Invalid User Name or password")
        End If
    End Sub



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session.Clear()
        If Session("UserID") = "" Then
            Button12.Visible = False
            Button13.Visible = False
            Button14.Visible = False
            Button15.Visible = False
            Button16.Visible = False
            Button17.Visible = False
            ' Button18.Visible = False

        End If

    End Sub

    Protected Sub RememberMe_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub LoginButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Login1_LoggedIn(ByVal sender As Object, ByVal e As System.EventArgs) Handles Login1.LoggedIn
        Login1_Authenticate(sender, e)
    End Sub

    Protected Sub LoginButton_Click1(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub LoginButton_Click2(ByVal sender As Object, ByVal e As System.EventArgs)
        '       Login1_Authenticate(sender, e)
    End Sub


    

    

   
    

    
    

   
    

   

    
End Class
