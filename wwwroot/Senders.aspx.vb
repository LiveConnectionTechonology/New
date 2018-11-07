Imports System.Data.SqlClient
Partial Class Senders
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
        If Not IsPostBack Then
            DropDownList1.DataBind()
           
            ' txtFullName.Text = Session("UserFullName1")
            '    txtUserName.Text = Session("UserName1")

            ' DropDownList1.SelectedValue = Session("UID")


        End If
        ' Label1.Text = " : " + Session("userName")

        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView

        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()
        cmd.CommandText = "SELECT dbo.Senders.SenderID AS No, dbo.Users.UserName AS [User Name], dbo.Users.UserFullName AS [Full Name], dbo.Senders.Sender" & _
                    " FROM dbo.Senders INNER JOIN dbo.Users ON dbo.Senders.UserID = dbo.Users.UserID where Users.UserID=" + DropDownList1.SelectedValue + " Order By Sender"
        'If Session("UserFullName1") <> "" Then
        'cmd.CommandText = cmd.CommandText + " and Senders.UserID=" + Session("UID")
        ' Session("UserFullName1") = ""
        'End If
        cmd.Connection = Conn
        adp.SelectCommand = cmd
        adp.Fill(SampleSource)
        TableView = SampleSource.Tables(0).DefaultView

        GridView1.DataSource = TableView
        GridView1.DataBind()

        Button2.Enabled = False

    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click

        txtSender.Text = ""
        '   DropDownList1.Enabled = True

        btnSave.Enabled = True
        Button2.Enabled = False


    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim cmd As New SqlCommand
        cmd.Connection = Conn
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.CommandText = "sp_InsertSenders"
        
        cmd.Parameters.AddWithValue("@Sender", txtSender.Text)
        cmd.Parameters.AddWithValue("UserID", DropDownList1.SelectedValue)
        
        '   cmd.Parameters.AddWithValue("@ComID", DropDownList1.SelectedValue.ToString)
        cmd.ExecuteNonQuery()
        Button2.Enabled = False
        btnSave.Enabled = False
        btnNew_Click(sender, e)
        Page_Load(sender, e)
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim cmd As New SqlCommand
        cmd.Connection = Conn
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.CommandText = "sp_UpdateSenders"

        cmd.Parameters.AddWithValue("@SenderID", Session("SenderID"))
        cmd.Parameters.AddWithValue("@Sender", txtSender.Text)
        cmd.ExecuteNonQuery()
        Button2.Enabled = False
        btnSave.Enabled = True
        btnNew_Click(sender, e)
        Page_Load(sender, e)
    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing
        Button2.Enabled = True
        Dim cmd As New SqlCommand()
        Session("SenderID") = GridView1.Rows(e.NewEditIndex).Cells(1).Text
        cmd.CommandText = "SELECT Senders.UserID,dbo.Senders.SenderID , dbo.Users.UserName , dbo.Users.UserFullName , dbo.Senders.Sender" & _
                    " FROM dbo.Senders INNER JOIN dbo.Users ON dbo.Senders.UserID = dbo.Users.UserID  where SenderID = " + GridView1.Rows(e.NewEditIndex).Cells(1).Text
        '  Response.Write(cmd.CommandText)
        cmd.Connection = Conn
        Dim reader As SqlDataReader = cmd.ExecuteReader()

        If reader.Read Then

            'txtFullName.Text = reader("UserFullName").ToString
            ' txtUserName.Text = reader("UserName").ToString
            '  DropDownList1.SelectedValue = reader("UserID").ToString
            txtSender.Text = reader("Sender").ToString
            
            '   DropDownList1.Enabled = False
            '
            '   DropDownList1.SelectedValue = reader("ComID").ToString


            Button2.Enabled = True
            btnSave.Enabled = False
        End If
    End Sub

    

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Dim cmd As New SqlCommand()

        cmd.CommandText = "Delete from Senders where SenderID=" + GridView1.Rows(e.RowIndex).Cells(1).Text
        '   Response.Write(cmd.CommandText)

        cmd.Connection = Conn
        cmd.ExecuteNonQuery()
        Response.Write("<script>alert('Deleted')</script>")
        Page_Load(sender, e)
    End Sub

    
End Class
