Imports System.Data.SqlClient
Imports System.IO

Partial Class Trans
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

        ' txtusername.Text = Session("UName")
        If Not IsPostBack Then
            DropDownList1.DataBind()
            DropDownList1_SelectedIndexChanged(sender, e)
            ' dlCredits_SelectedIndexChanged(sender, e)
            Session("CheckRefresh") = Server.UrlDecode(System.DateTime.Now.ToString())
        End If

        'txtFullName.Text = Session("FName")
        'txtbefore.Text = Session("Bpoints")
        ' Response.Write(Session("Price"))
        ' If Session("Pr") = "" Then
        'txtPrice.Text = "1"
        '   Else
        '  txtPrice.Text = Session("Pr")
        '    End If

        ' Label1.Text = " : " + Session("userName")

        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView

        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()
        cmd.CommandText = "SELECT    Trans.TranID AS ID,Users.UserName AS [User name],Users.UserFullName AS Name,Trans.Credit,  Trans.BalBefore AS [Points Before], " & _
" Trans.Points AS Points,Trans.price AS Price,Trans.TranDate AS Date,Trans.Notes FROM Trans INNER JOIN Users ON  Trans.UserID =Users.UserID where  Users.UserID=" + DropDownList1.SelectedValue + " Order By TranID desc"
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


        Button2.Enabled = False

        SqlDataSource1.SelectCommand = "SELECT ID,Points as Package,Price from Packages Order by Points "

        SqlDataSource1.DataBind()

        GridView2.DataBind()


    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        '  txtUserName.Text = ""
        'txtbefore.Text = ""
        ' txtPrice.Text = ""
        ' txtFullName.Text = ""
        '   txtAfter.Text = ""

        txtPrice.Text = Session("Pr")
        txtbefore.Text = txtAfter.Text




        btnSave.Enabled = True
        Button2.Enabled = False


    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If (Session("CheckRefresh").ToString() = ViewState("CheckRefresh").ToString()) Then

            If dlCredits.SelectedValue <> 0 Then
                Dim cmd As New SqlCommand
                cmd.Connection = Conn
                cmd.CommandType = Data.CommandType.StoredProcedure
                cmd.CommandText = "sp_InsertTrans"

                cmd.Parameters.AddWithValue("@UserID", DropDownList1.SelectedValue)
                cmd.Parameters.AddWithValue("@AdminID", Session("UserID"))
                cmd.Parameters.AddWithValue("@Credit", dlCredits.SelectedItem.Text)
                cmd.Parameters.AddWithValue("@Notes", Txtnotes.Text)

                cmd.Parameters.AddWithValue("@Price", txtPrice.Text)

                Session("Pr") = txtPrice.Text
                cmd.ExecuteNonQuery()
                Button2.Enabled = False
                btnSave.Enabled = False

                btnNew_Click(sender, e)
                Page_Load(sender, e)
                Session("update") = Server.UrlEncode(System.DateTime.Now.ToString())
            End If
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim cmd As New SqlCommand
        cmd.Connection = Conn
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.CommandText = "sp_UpdateTrans"
        cmd.Parameters.AddWithValue("@UserID", Session("UID"))
        cmd.Parameters.AddWithValue("@TranID", Session("TranID"))


        cmd.ExecuteNonQuery()
        Button2.Enabled = False
        btnSave.Enabled = True
        btnNew_Click(sender, e)
        Page_Load(sender, e)
    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing
        Button2.Enabled = True
        Dim cmd As New SqlCommand()
        Session("TranID") = GridView1.Rows(e.NewEditIndex).Cells(1).Text
        cmd.CommandText = "SELECT    TranID ,Credit, BalBefore ,Trans.Points ,Trans.price ,Trans.Notes FROM Trans INNER JOIN Users ON  Trans.UserID =Users.UserID where TranID=" + GridView1.Rows(e.NewEditIndex).Cells(1).Text
        '  Response.Write(cmd.CommandText)
        cmd.Connection = Conn
        Dim reader As SqlDataReader = cmd.ExecuteReader()

        If reader.Read Then

            dlCredits.SelectedValue = reader("Credit").ToString

            txtbefore.Text = reader("BalBefore").ToString
            txtPrice.Text = reader("Price").ToString

            txtAfter.Text = reader("Points").ToString
            Txtnotes.Text = reader("Notes").ToString

            '
            '   DropDownList1.SelectedValue = reader("ComID").ToString


            Button2.Enabled = True
            btnSave.Enabled = False
        End If
    End Sub



    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub




    Protected Sub dlCredits_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dlCredits.SelectedIndexChanged
        txtPrice.Text = dlCredits.SelectedValue
        lbCash.Text = "Unit Price =" + (Convert.ToDouble(dlCredits.SelectedValue) / Convert.ToDouble(dlCredits.SelectedItem.Text)).ToString
        If txtbefore.Text <> "" Then
            txtAfter.Text = CStr(CInt(txtbefore.Text) + CInt(dlCredits.SelectedItem.Text)).ToString
        End If


    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim cmd As New SqlCommand()
        cmd.CommandText = "SELECT    Points FROM Users  where UserID=" + DropDownList1.SelectedValue.ToString
        cmd.Connection = Conn
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        txtbefore.Text = 0
        If reader.Read Then
            txtbefore.Text = reader("Points").ToString
        End If
    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        ViewState("CheckRefresh") = Session("CheckRefresh")
    End Sub

    Protected Sub btnNew0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew0.Click
        txtAdminFullName.Text = ""
        DropDownList1.Enabled = True

        txtPWD.Text = ""

        btnSave.Enabled = True
        Button2.Enabled = False
    End Sub

    Protected Sub btnSave0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave0.Click
        Dim cmd As New SqlCommand
        cmd.Connection = Conn
        cmd.CommandType = Data.CommandType.Text
        cmd.CommandText = "Insert Into Packages values(" + txtAdminFullName.Text + "," + txtPWD.Text + ")"

        cmd.ExecuteNonQuery()
        Button2.Enabled = False
        btnSave.Enabled = False
        btnNew_Click(sender, e)
        SqlDataSource1.DataBind()
        dlCredits.DataBind()
        '  Page_Load(sender, e)
    End Sub

    Protected Sub Button19_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button19.Click
        Dim cmd As New SqlCommand
        cmd.Connection = Conn
        cmd.CommandType = Data.CommandType.Text
        cmd.CommandText = "Update Packages Set Points=" + txtAdminFullName.Text + ",Price=" + txtPWD.Text + " where ID=" + Session("AdID")

        cmd.ExecuteNonQuery()
        Button2.Enabled = False
        btnSave.Enabled = True
        btnNew_Click(sender, e)
        SqlDataSource1.DataBind()
        dlCredits.DataBind()
        ' Page_Load(sender, e)
    End Sub

    Protected Sub GridView2_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView2.RowDeleting
        SqlDataSource1.DeleteCommand = "Delete from Packages where ID=" + GridView2.Rows(e.RowIndex).Cells(1).Text
        SqlDataSource1.DataBind()

        '   Response.Write(cmd.CommandText)


        Response.Write("<script>alert('Deleted')</script>")

        Page_Load(sender, e)
    End Sub

    Protected Sub GridView2_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView2.RowEditing
        Button2.Enabled = True
        Dim cmd As New SqlCommand()
        Session("AdID") = GridView2.Rows(e.NewEditIndex).Cells(1).Text
        cmd.CommandText = "Select * from Packages where ID=" + GridView2.Rows(e.NewEditIndex).Cells(1).Text
        '  Response.Write(cmd.CommandText)
        cmd.Connection = Conn
        Dim reader As SqlDataReader = cmd.ExecuteReader()

        If reader.Read Then

            txtAdminFullName.Text = reader("Points").ToString
            txtPWD.Text = reader("Price").ToString

            ' DropDownList1.SelectedValue = reader("ComID").ToString
            ' DropDownList1.Enabled = False

            Button2.Enabled = True
            btnSave.Enabled = False
        End If
        reader.Close()
        cmd.Connection.Close()
    End Sub

    Protected Sub Button20_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button20.Click
        Panel2.Visible = True
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
