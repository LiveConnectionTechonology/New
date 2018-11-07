
Partial Class Index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("UserID") = "" Then
            Button12.Visible = False
            Button13.Visible = False
            Button14.Visible = False
            Button15.Visible = False
            Button16.Visible = False
            Button17.Visible = False
            Button25.Visible = True
            Response.Redirect("Index.aspx")
        Else
            Button25.Visible = False
            Response.Redirect("MainAgent.aspx")
        End If


    End Sub

    Protected Sub RememberMe_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub LoginButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

   
    Protected Sub LoginButton_Click1(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    
    

    

   
    

   
End Class