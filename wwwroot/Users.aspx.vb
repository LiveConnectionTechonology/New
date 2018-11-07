Imports System.Data.SqlClient
Imports System.IO

Partial Class Users
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

        ' Label1.Text = " : " + Session("userName")

        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView
        '  Response.Write(Session("AdminID"))
        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()
        cmd.CommandText = "SELECT     UserID AS No, UserName AS [User Name], UserFullName AS [Full Name], RegisterdDate AS [Register Date], Points, Email, IsActive AS Active, SMPP,IsTrust AS Trust FROM Users where userID<>" + Session("UserID") + "  And AdminID=" + Session("AdminID").ToString
        cmd.CommandText = cmd.CommandText + " Order By UserName"
        cmd.Connection = Conn
        adp.SelectCommand = cmd
        adp.Fill(SampleSource)
        TableView = SampleSource.Tables(0).DefaultView

        GridView1.DataSource = TableView
        GridView1.DataBind()
        If GridView1.Rows.Count > 0 Then
            btnPrint.Visible = True
            btnExport.Visible = True


        End If

        ' SqlDataSource1.SelectCommand = "SELECT     UserID AS No, UserName AS [User Name], UserFullName AS [Full Name], RegisterdDate AS [Register Date], Points, Email, IsActive AS Active, SMPP,IsTrust AS Trust FROM Users where userID<>" + Session("UserID")
        '  SqlDataSource1.DataBind()
        'GridView1.DataBind()

        Button2.Enabled = False

    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        txtUserName.Text = ""
        txtPWD.Text = ""
        txtEmail.Text = ""
        txtFullName.Text = ""
        txtPhone.Text = ""
        txtSender.Text = ""
        ckActive.Checked = True
        ckSMPP.Checked = False
        ckTrust.Checked = True
        txtUserName.Enabled = True

        btnSave.Enabled = True
        Button2.Enabled = False


    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim cmd As New SqlCommand
        cmd.Connection = Conn
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.CommandText = "sp_InsertUsers"
        cmd.Parameters.AddWithValue("@UserFullName", txtFullName.Text)
        cmd.Parameters.AddWithValue("@UserName", txtUserName.Text)
        cmd.Parameters.AddWithValue("@Pwd", txtPWD.Text)
        cmd.Parameters.AddWithValue("@SenderName", txtSender.Text)
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text)
        cmd.Parameters.AddWithValue("@IsActive", ckActive.Checked)
        cmd.Parameters.AddWithValue("@SMPP", ckSMPP.Checked)
        cmd.Parameters.AddWithValue("@IsTrust", ckTrust.Checked)
        cmd.Parameters.AddWithValue("@Phone", txtPhone.Text)
        cmd.Parameters.AddWithValue("@IsMMS", CheckBox1.Checked)
        cmd.Parameters.AddWithValue("@IsHTTP", CheckBox2.Checked)
        cmd.Parameters.AddWithValue("@AdminID", Session("UserID"))
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
        cmd.CommandText = "sp_UpdateUsers"

        cmd.Parameters.AddWithValue("@UserID", Session("UID"))

        cmd.Parameters.AddWithValue("@UserFullName", txtFullName.Text)
        cmd.Parameters.AddWithValue("@Pwd", txtPWD.Text)
        cmd.Parameters.AddWithValue("@SenderName", txtSender.Text)
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text)
        cmd.Parameters.AddWithValue("@IsActive", ckActive.Checked)
        cmd.Parameters.AddWithValue("@SMPP", ckSMPP.Checked)
        cmd.Parameters.AddWithValue("@IsTrust", ckTrust.Checked)
        cmd.Parameters.AddWithValue("@Phone", txtPhone.Text)
        cmd.Parameters.AddWithValue("@IsHTTP", CheckBox2.Checked)
        '     cmd.Parameters.AddWithValue("@ComID", DropDownList1.SelectedValue.ToString)
        cmd.ExecuteNonQuery()
        Button2.Enabled = False
        btnSave.Enabled = True
        btnNew_Click(sender, e)
        Page_Load(sender, e)
    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing
        Button2.Enabled = True
        Dim cmd As New SqlCommand()
        Session("UID") = GridView1.Rows(e.NewEditIndex).Cells(1).Text
        cmd.CommandText = "Select * from Users where UserID=" + GridView1.Rows(e.NewEditIndex).Cells(1).Text
        '  Response.Write(cmd.CommandText)
        cmd.Connection = Conn
        Dim reader As SqlDataReader = cmd.ExecuteReader()

        If reader.Read Then

            txtFullName.Text = reader("UserFullName").ToString

            txtUserName.Text = reader("UserName").ToString

            Session("UserFullName1") = reader("UserFullName").ToString

            Session("UserName1") = reader("UserName").ToString

            txtUserName.Enabled = False
            txtPWD.Text = reader("Pwd").ToString
            txtSender.Text = reader("SenderName").ToString
            txtEmail.Text = reader("Email").ToString
            ckActive.Checked = reader("IsActive").ToString

            ckSMPP.Checked = reader("SMPP").ToString
            ckTrust.Checked = reader("IsTrust").ToString
            CheckBox2.Checked = reader("IsHTTP").ToString
            txtPhone.Text = reader("Phone").ToString
            Session("Bpoints") = reader("Points").ToString
            '
            '   DropDownList1.SelectedValue = reader("ComID").ToString


            Button2.Enabled = True
            btnSave.Enabled = False
        End If
    End Sub



    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Dim cmd As New SqlCommand()

        cmd.CommandText = "Delete from Users where UserID=" + GridView1.Rows(e.RowIndex).Cells(1).Text
        '   Response.Write(cmd.CommandText)

        cmd.Connection = Conn
        cmd.ExecuteNonQuery()
        Response.Write("<script>alert('Deleted')</script>")
        Page_Load(sender, e)
    End Sub



    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        Dim SQl As String = ""
        'GridView1.DataBind()
        Dim currentCommand As String = e.CommandName
        Dim currentRowIndex As Integer = Int32.Parse(e.CommandArgument.ToString())
        ' Dim ProductID As String = GridView1.DataKeys(currentRowIndex).Value

        '  Label1.Text = "Command: " & currentCommand
        '  Label2.Text = "Row Index: " & currentRowIndex.ToString
        '  Label4.Text = "Product ID: " & GridView1.Rows(currentRowIndex).Cells(2).Text
        ' Label4.Visible = True



        Session("UID") = GridView1.Rows(currentRowIndex).Cells(1).Text
        If currentCommand = "Purchase" Then
            Session("UName") = GridView1.Rows(currentRowIndex).Cells(2).Text
            Session("FName") = GridView1.Rows(currentRowIndex).Cells(3).Text
            If Session("UID") <> "" Then
                Response.Redirect("Trans.aspx")
            End If
        ElseIf currentCommand = "Senders" Then
            Response.Redirect("Senders.aspx")
        End If
    End Sub

    Protected Sub btnExport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnExport.Click
        Response.ClearContent()
        Response.Buffer = True
        Response.AddHeader("content-disposition", String.Format("attachment; filename={0}", "Customers.xls"))
        Response.ContentType = "application/ms-excel"
        Dim sw As New StringWriter()
        Dim htw As New HtmlTextWriter(sw)
        GridView1.AllowPaging = False

        'Change the Header Row back to white color
        GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF")
        'Applying stlye to gridview header cells
        For i As Integer = 0 To GridView1.HeaderRow.Cells.Count - 1
            GridView1.HeaderRow.Cells(i).Style.Add("background-color", "#df5015")
        Next
        GridView1.RenderControl(htw)
        Response.Write(sw.ToString())
        Response.[End]()
    End Sub
End Class
