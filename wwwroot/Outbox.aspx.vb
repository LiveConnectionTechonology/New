Imports System.Data.SqlClient
Imports System.IO

Partial Class Outbox
    Inherits System.Web.UI.Page

    Private ReadOnly Property Conn() As SqlConnection
        Get
            Dim ConnectionToFetch As New SqlConnection("Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000")
            ConnectionToFetch.Open()
            Return ConnectionToFetch
        End Get
    End Property
    Protected Sub RadioButtonList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButtonList1.SelectedIndexChanged

    End Sub

    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton4.Click

    End Sub

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDetails.Click
        btnPrint.Visible = False
        btnExport.Visible = False
        Label21.Text = ""
        GridView1.Visible = False

        GridView3.Visible = True

        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView

        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()
        cmd.CommandText = "SELECT     MsgsQueue.BatchID, MsgsQueue.MobileNO, MsgsQueue.Msg, MsgsQueue.MsgTime, MsgsQueue.Status [Delivery Status],ComName as Operator FROM MsgsQueue INNER JOIN " & _
        " Batchs ON MsgsQueue.BatchID = Batchs.BatchID Inner Join Coms on MsgsQueue.ComID=Coms.ComID where  MsgsQueue.UserID=" + Session("UserID") & _
        "   And (MsgsQueue.ComID=" + dlComs.SelectedValue.ToString + " Or " + dlComs.SelectedValue.ToString + " =0) "
        If RadioButtonList1.SelectedValue <> 5 Then
            cmd.CommandText = cmd.CommandText + " and MsgsQueue.Status=" + RadioButtonList1.SelectedValue
        End If
        If TextBox1.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and MobileNO like '%" + TextBox1.Text + "%'"
        End If
        If TextBox2.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and  MsgsQueue.MSG like '%" + TextBox2.Text + "%' "
        End If
        If CheckBox2.Checked And DateTimePicker1.Text <> "" And DateTimePicker2.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and MsgTime between '" + DateTimePicker1.Text + " 00:00 AM' and '" + DateTimePicker2.Text + " 11:59 PM'"
        End If
        cmd.CommandText = cmd.CommandText + "order by MsgsQueue.batchID desc "

        cmd.Connection = Conn
        adp.SelectCommand = cmd
        adp.Fill(SampleSource)
        TableView = SampleSource.Tables(0).DefaultView

        GridView3.DataSource = TableView
        GridView3.DataBind()
        lbhis.Text = GridView3.Rows.Count.ToString + " Records Found"
        If GridView3.Rows.Count > 0 Then
            btnPrint0.Visible = True
            btnExport0.Visible = True


        End If

    End Sub

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

        If Not IsPostBack Then
            LinkButton4_Click(sender, e)
        End If

    End Sub


    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing

    End Sub

    Protected Sub GridView1_SelectedIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewSelectEventArgs) Handles GridView1.SelectedIndexChanging
        GridView3.Visible = True
        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView

        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()
        cmd.CommandText = "SELECT     MsgsQueue.BatchID, MsgsQueue.MobileNO, MsgsQueue.Msg, MsgsQueue.MsgTime, MsgsQueue.Status [Delivery Status] FROM MsgsQueue INNER JOIN " & _
        "Batchs ON MsgsQueue.BatchID = Batchs.BatchID where MsgsQueue.BatchID=" + GridView1.Rows(e.NewSelectedIndex).Cells(1).Text + " order by MsgsQueue.batchID desc "

        cmd.Connection = Conn
        adp.SelectCommand = cmd
        adp.Fill(SampleSource)
        TableView = SampleSource.Tables(0).DefaultView

        GridView3.DataSource = TableView
        GridView3.DataBind()


        lbhis.Text = " BatchID =" + GridView1.Rows(e.NewSelectedIndex).Cells(1).Text + " >> No of Records =" + GridView3.Rows.Count.ToString
        If GridView3.Rows.Count > 0 Then
            btnPrint0.Visible = True
            btnExport0.Visible = True


        End If
        Dim ScriptStr As New System.Text.StringBuilder

        ScriptStr.Append("<script language='javascript'>")
        ScriptStr.Append("try {")
        ScriptStr.Append("window.scrollTo(0, 100000);")
        ScriptStr.Append("} catch (e) {}")
        ScriptStr.Append("</script>")

        ClientScript.RegisterStartupScript(Me.GetType, "ScrollToBottom", ScriptStr.ToString)
    End Sub

    Protected Sub CheckBox2_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox2.CheckedChanged
        Panel6.Visible = False
        If CheckBox2.Checked Then
            Panel6.Visible = True
        End If
    End Sub

    Protected Sub Button20_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBatch.Click
        GridView1.Visible = True
        lbhis.Text = ""
        GridView3.Visible = False
        '    Panel1.Visible = False
        Panel2.Visible = True
        '  Panel3.Visible = False
        '  lbmsgtype.Text = "View message history"

        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView

        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()
        cmd.CommandText = "SELECT     Batchs.BatchID, Batchs.Msg, Batchs.Sender, Groups.GroupName [List], Batchs.RegisterDate [Register Date], Batchs.Status," & _
        " Batchs.StatusDate [Status Date],points,Notes FROM  Batchs left outer JOIN Groups ON Batchs.GroupID = Groups.GroupID   where Batchs.UserID=" + Session("UserID")
        If RadioButtonList1.SelectedValue <> 5 Then
            cmd.CommandText = cmd.CommandText + " and Status=" + RadioButtonList1.SelectedValue
        End If
        If CheckBox2.Checked And DateTimePicker1.Text <> "" And DateTimePicker2.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and RegisterDate between '" + DateTimePicker1.Text + " 00:00 AM' and '" + DateTimePicker2.Text + " 11:59 PM'"
        End If
        cmd.CommandText = cmd.CommandText + " Order By RegisterDate  desc"
        cmd.Connection = Conn
        adp.SelectCommand = cmd
        adp.Fill(SampleSource)
        TableView = SampleSource.Tables(0).DefaultView
        GridView1.DataSource = TableView
        GridView1.DataBind()
        Label21.Text = "(" + TableView.Count.ToString + ") Records Selected"
        If GridView1.Rows.Count > 0 Then
            btnPrint.Visible = True
            btnExport.Visible = True


        End If
        btnPrint0.Visible = False
        btnExport0.Visible = False

    End Sub

    Protected Sub Button15_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button15.Click

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

    Protected Sub btnExport0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnExport0.Click

        Response.ClearContent()
        Response.Buffer = True
        Response.AddHeader("content-disposition", String.Format("attachment; filename={0}", "Customers.xls"))
        Response.ContentType = "application/ms-excel"
        Dim sw As New StringWriter()
        Dim htw As New HtmlTextWriter(sw)
        GridView3.AllowPaging = False

        'Change the Header Row back to white color
        GridView3.HeaderRow.Style.Add("background-color", "#FFFFFF")
        'Applying stlye to gridview header cells
        For i As Integer = 0 To GridView3.HeaderRow.Cells.Count - 1
            GridView3.HeaderRow.Cells(i).Style.Add("background-color", "#df5015")
        Next
        GridView3.RenderControl(htw)
        Response.Write(sw.ToString())
        Response.[End]()
    End Sub
End Class
