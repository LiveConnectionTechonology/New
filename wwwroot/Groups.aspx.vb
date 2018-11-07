Imports System.Data.SqlClient
Imports System.IO

Partial Class Grops
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


        'Label1.Text = " : " + Session("userName")
        Dim cmd1 As New SqlCommand()
        cmd1.CommandText = "Select Points from Users where UserID=" + Session("UserID")
        '  Response.Write(cmd.CommandText)
        cmd1.Connection = Conn
        Dim reader As SqlDataReader = cmd1.ExecuteReader()

        If reader.Read Then
            Label1.Text = " User Name: " + Session("userName") + "  *** Remain Messages (" + reader(0).ToString + ")"
            reader.Close()
        End If


        SqlDataSource1.SelectCommand = "SELECT Groups.GroupID  [Group No], Groups.GroupName [Group Name], Groups.GroupDesc [Desc] FROM Groups INNER JOIN Users ON Groups.UserID = Users.UserID where Groups.UserID=" + Session("UserID")

        SqlDataSource1.DataBind()

        GridView1.DataBind()

        Button2.Enabled = False
      
        If Not IsPostBack Then
            DropDownList3.DataBind()
            DropDownList3.Items.Insert(0, New ListItem("-- All --", "0"))
            Panel1.Visible = True
            Panel3.Visible = False

        End If

    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        txtAdminFullName.Text = ""
        DropDownList1.Enabled = True

        txtPWD.Text = ""

        btnSave.Enabled = True
        Button2.Enabled = False


    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim cmd As New SqlCommand
        cmd.Connection = Conn
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.CommandText = "sp_InsertGroups"
        cmd.Parameters.AddWithValue("@GroupName", txtAdminFullName.Text)
        cmd.Parameters.AddWithValue("@UserID", Session("UserID"))
        cmd.Parameters.AddWithValue("@GroupDesc", txtPWD.Text)
        'cmd.Parameters.AddWithValue("@ComID", DropDownList1.SelectedValue.ToString)
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
        cmd.CommandText = "sp_UpdateGroups"
        cmd.Parameters.AddWithValue("@GroupName", txtAdminFullName.Text)
        cmd.Parameters.AddWithValue("@GroupID", Session("ADID"))
        cmd.Parameters.AddWithValue("@GroupDesc", txtPWD.Text)
        '  cmd.Parameters.AddWithValue("@ComID", DropDownList1.SelectedValue.ToString)
        cmd.ExecuteNonQuery()
        Button2.Enabled = False
        btnSave.Enabled = True
        btnNew_Click(sender, e)
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

        If currentCommand = "Contacts" Then

            Session("GName") = GridView1.Rows(currentRowIndex).Cells(3).Text
            Session("AdID") = GridView1.Rows(currentRowIndex).Cells(2).Text
            If Session("AdID") <> "" Then
                Response.Redirect("lists.aspx")
            End If

        ElseIf currentCommand = "Delete" Then
            Dim cmd As New SqlCommand()
            cmd.CommandText = "Delete from Customers where GroupID=" + GridView1.Rows(currentRowIndex).Cells(2).Text

            '   Response.Write(cmd.CommandText)

            cmd.Connection = Conn
            cmd.ExecuteNonQuery()
            Response.Write("<script>alert('Deleted')</script>")
            SqlDataSource1.DataBind()
            SqlDataSource1.DeleteCommand = " Delete from Groups where GroupID=" + GridView1.Rows(currentRowIndex).Cells(2).Text
            Page_Load(sender, e)
        Else
            Button2.Enabled = True
            Dim cmd As New SqlCommand()
            Session("AdID") = GridView1.Rows(currentRowIndex).Cells(2).Text
            cmd.CommandText = "Select * from Groups where GroupID=" + GridView1.Rows(currentRowIndex).Cells(2).Text
            '  Response.Write(cmd.CommandText)
            cmd.Connection = Conn
            Dim reader As SqlDataReader = cmd.ExecuteReader()

            If reader.Read Then

                txtAdminFullName.Text = reader("GroupName").ToString
                txtPWD.Text = reader("GroupDesc").ToString

                ' DropDownList1.SelectedValue = reader("ComID").ToString
                ' DropDownList1.Enabled = False

                Button2.Enabled = True
                btnSave.Enabled = False
            End If

        End If



    End Sub









    Protected Sub Button18_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button18.Click
        Panel1.Visible = True
        Panel3.Visible = False
    End Sub

    Protected Sub btnNew0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew0.Click
        CheckBox5.Checked = False
        lbRowCount.Text = ""
        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView

        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()
        cmd.CommandText = "SELECT Customers.CustMobileNo,Customers.CustName,Groups.GroupName,ComName as Operator FROM Customers INNER JOIN Groups ON Customers.GroupID =Groups.GroupID " & _
        " Inner Join Coms on Customers.ComID=Coms.ComID where  Customers.UserID=" + Session("UserID") + " And (Customers.ComID=" + dlComs.SelectedValue.ToString + " Or " + dlComs.SelectedValue.ToString + " =0) "
        If txtAdminFullName.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and CustName Like '%" + txtAdminFullName.Text + "%'"
        End If
        If txtPWD0.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and CustMobileNo Like '%" + txtPWD0.Text + "%'"
        End If
        If DropDownList3.SelectedValue <> "0" Then
            cmd.CommandText = cmd.CommandText + " and Customers.GroupID =" + DropDownList3.SelectedValue.ToString
        End If

        cmd.Connection = Conn
        adp.SelectCommand = cmd
        adp.Fill(SampleSource)
        TableView = SampleSource.Tables(0).DefaultView

        GridView2.DataSource = TableView
        GridView2.DataBind()
        CheckBox5.Visible = True
        If GridView2.Rows.Count = 0 Then

            CheckBox5.Visible = False
        End If
        lbRowCount.Text = GridView2.Rows.Count.ToString + " Rows Found"

        If GridView2.Rows.Count > 0 Then
            btnPrint.Visible = True
            btnExport.Visible = True


        End If
    End Sub

    

    Protected Sub Button19_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button19.Click
        Panel1.Visible = False
        Panel3.Visible = True
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        Session("To") = ""

        ' Panel1.Visible = True
        '  Panel3.Visible = False

        Dim i As Integer = 0

        If GridView2.Rows.Count > 0 Then

            For Each gvr As GridViewRow In GridView2.Rows
                If (CType(gvr.FindControl("CheckBox1"), CheckBox)).Checked = True Then
                    i += 1
                    Session("To") = Session("To") + gvr.Cells(1).Text + ";"


                End If
            Next gvr

        End If
        Session("Comto") = ""
        If i > 0 Then
            Session("Comto") = "1"
            Response.Redirect("SendSMS.aspx")
            ' txtRecipient.Text = Session("To")

        End If
        'Response.Redirect(prevPage)
        ' Response.Write(Session("To"))

    End Sub

    Protected Sub CheckBox5_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox5.CheckedChanged
        Dim chk As CheckBox
        If CheckBox5.Checked Then
            For Each rowItem As GridViewRow In GridView2.Rows
                chk = CType(rowItem.Cells(0).FindControl("CheckBox1"), CheckBox)
                chk.Checked = CType(sender, CheckBox).Checked
            Next
        End If
        If Not CheckBox5.Checked Then
            For Each rowItem As GridViewRow In GridView2.Rows
                chk = CType(rowItem.Cells(0).FindControl("CheckBox1"), CheckBox)
                chk.Checked = False

            Next
        End If

    End Sub

    Protected Sub btnExport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnExport.Click
        Response.ClearContent()
        Response.Buffer = True
        Response.AddHeader("content-disposition", String.Format("attachment; filename={0}", "Customers.xls"))
        Response.ContentType = "application/ms-excel"
        Dim sw As New StringWriter()
        Dim htw As New HtmlTextWriter(sw)
        GridView2.AllowPaging = False

        'Change the Header Row back to white color
        GridView2.HeaderRow.Style.Add("background-color", "#FFFFFF")
        'Applying stlye to gridview header cells
        For i As Integer = 0 To GridView2.HeaderRow.Cells.Count - 1
            GridView2.HeaderRow.Cells(i).Style.Add("background-color", "#df5015")
        Next
        GridView2.RenderControl(htw)
        Response.Write(sw.ToString())
        Response.[End]()
    End Sub
End Class
