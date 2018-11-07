Imports System.Data.SqlClient
Imports System.IO

Partial Class Reports
    Inherits System.Web.UI.Page
    Private ReadOnly Property Conn() As SqlConnection
        Get
            Dim ConnectionToFetch As New SqlConnection("Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000")
            ConnectionToFetch.Open()
            Return ConnectionToFetch
        End Get
    End Property

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("UserID") = "1"
        Session("AdminID") = "1"
        If Session("UserID") = "" Then
            Session.Clear()
            Response.Redirect("index.aspx")
        End If
        Label1.Text = "Welcome Adminstrator : " + Session("UserName")
        Dim cmd As New SqlCommand()

        cmd.CommandText = "SELECT Count(*)  FROM Batchs where points<>0 and status=0"
        '  Response.Write(cmd.CommandText)
        cmd.Connection = Conn
        Dim reader As SqlDataReader = cmd.ExecuteReader()

        If reader.Read Then

            '  LinkButton6.Text = "New Requests (" + reader(0).ToString + ")"
        End If

        If Not IsPostBack Then
            Panel2.Visible = False
            Panel7.Visible = False
        End If
    End Sub




    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click

        'GridView1.Visible = False
        '  Panel2.Visible = True
        GridView3.Visible = True
        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView

        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()
        If Label21.Text = "Inbox Reports" Then


            cmd.CommandText = "SELECT     MsgQueueID AS ID, MobileNO AS [Mobile No], ContentID AS Message, MsgTime AS [SMS Time], ShortCode AS [Short Code]" & _
        " , ComName as Operator FROM         dbo.RecivedMsgs Inner Join Coms On RecivedMsgs.comid=Coms.ComID where 1=1   And (RecivedMsgs.ComID=" + dlComs.SelectedValue.ToString + " Or " + dlComs.SelectedValue.ToString + " =0) "
            If TextBox1.Text <> "" Then
                cmd.CommandText = cmd.CommandText + " and MobileNO like '%" + TextBox1.Text + "%'"
            End If
            If TextBox4.Text <> "" Then
                cmd.CommandText = cmd.CommandText + " and  ContentID like '%" + TextBox4.Text + "%' "
            End If
            If CheckBox2.Checked And DateTimePicker1.Text <> "" And DateTimePicker2.Text <> "" Then
                cmd.CommandText = cmd.CommandText + " and MsgTime between '" + DateTimePicker1.Text + " 00:00 AM' and '" + DateTimePicker2.Text + " 11:59 PM'"
            End If
            If Not CheckBox3.Checked And DropDownList1.Text <> "" Then
                cmd.CommandText = cmd.CommandText + " and AdminID= " + DropDownList1.SelectedValue
            End If
        ElseIf Label21.Text = "Users Report" Then
            '--------------------------------------User
            Dim Top As String = ""
            If dlTop.SelectedValue.ToString <> "0" Then
                Top = "top " + dlTop.SelectedValue.ToString
            End If
            cmd.CommandText = "SELECT  " + Top + "   UserID AS No, UserName AS [User Name], UserFullName AS [Full Name], RegisterdDate AS [Register Date], Points, Email, IsActive AS Active, SMPP,IsTrust AS Trust FROM Users where userID<>" + Session("UserID") + "  And AdminID=" + Session("AdminID").ToString
            If TextBox1.Text <> "" Then
                cmd.CommandText = cmd.CommandText + "  and Points " + TextBox1.Text
            End If
            If Not CheckBox3.Checked And DropDownList1.Text <> "" Then
                cmd.CommandText = cmd.CommandText + " and  Users.UserID=" + DropDownList1.SelectedValue
            End If
            If CheckBox2.Checked And DateTimePicker1.Text <> "" And DateTimePicker2.Text <> "" Then
                cmd.CommandText = cmd.CommandText + " and RegisterDate between '" + DateTimePicker1.Text + " 00:00 AM' and '" + DateTimePicker2.Text + " 11:59 PM'"
            End If
            cmd.CommandText = cmd.CommandText + " Order By Points"
            '---------------------------------------end User

        Else
            '-------------------------------------------------------Trans
            cmd.CommandText = "SELECT    Trans.TranID AS ID,Users.UserName AS [User name],Users.UserFullName AS Name,Trans.Credit,  Trans.BalBefore AS [Points Before], " & _
" Trans.Points AS Points,Trans.price AS Price,Trans.TranDate AS Date,Trans.Notes FROM Trans INNER JOIN Users ON  Trans.UserID =Users.UserID where 1=1 "
            If TextBox1.Text <> "" Then
                cmd.CommandText = cmd.CommandText + "  and Credit " + TextBox1.Text
            End If
            If CheckBox2.Checked And DateTimePicker1.Text <> "" And DateTimePicker2.Text <> "" Then
                cmd.CommandText = cmd.CommandText + " and TranDate between '" + DateTimePicker1.Text + " 00:00 AM' and '" + DateTimePicker2.Text + " 11:59 PM'"
            End If
            If Not CheckBox3.Checked And DropDownList1.Text <> "" Then
                cmd.CommandText = cmd.CommandText + " and  Users.UserID=" + DropDownList1.SelectedValue
            End If
            cmd.CommandText = cmd.CommandText + " Order By TranID desc"
            '-------------------------------------------------------End Trans

        End If


        cmd.Connection = Conn
        adp.SelectCommand = cmd
        adp.Fill(SampleSource)
        TableView = SampleSource.Tables(0).DefaultView

        GridView3.DataSource = TableView
        GridView3.DataBind()
        lbhis.Text = GridView3.Rows.Count.ToString + " Records Found"
        If GridView3.Rows.Count > 0 Then
            btnprint.Visible = True
            btnExport.Visible = True


        End If



    End Sub

    Protected Sub CheckBox2_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox2.CheckedChanged
        Panel6.Visible = False
        If CheckBox2.Checked Then
            Panel6.Visible = True
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click

        Label21.Text = "Inbox Reports"
        Panel2.Visible = True
        Label20.Text = "Mobile Number"
        ' TextBox1.Visible = True
        dlTop.Visible = False
        Label22.Visible = False
        Panel7.Visible = False
        Label25.Visible = True
        Label26.Visible = True
        dlComs.Visible = True
        TextBox4.Visible = True
        Button7_Click(sender, e)
    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        Label21.Text = "Payments Report"
        Panel2.Visible = True
        Label20.Text = "Credit(<=,>=)      "
        dlTop.Visible = False
        Label22.Visible = False
        Panel7.Visible = False
        Label25.Visible = False
        Label26.Visible = False
        dlComs.Visible = False
        TextBox4.Visible = False
        TextBox1.Text = ""
        Button7_Click(sender, e)
    End Sub

    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton4.Click
        TextBox1.Text = ""
        Label21.Text = "Users Report"
        Panel2.Visible = True
        Label20.Text = "Points(<=,>=)      "
        dlTop.Visible = True
        Label22.Visible = True
        Panel7.Visible = False
        Label25.Visible = False
        Label26.Visible = False
        dlComs.Visible = False
        TextBox4.Visible = False
        Button7_Click(sender, e)
    End Sub

    Protected Sub CheckBox4_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox4.CheckedChanged
        Panel10.Visible = False
        If CheckBox4.Checked Then
            Panel10.Visible = True
        End If
    End Sub

    Protected Sub Button19_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button19.Click
        Label24.Text = ""
        GridView1.Visible = False

        GridView4.Visible = True

        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView

        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()
        cmd.CommandText = "SELECT ROW_NUMBER()  OVER (ORDER BY MsgQueueID) AS ID,    MsgsQueue.BatchID, UserFullName [User], MsgsQueue.MobileNO, MsgsQueue.Msg, MsgsQueue.MsgTime, MsgsQueue.Status [Delivery Status],SentTime as [Sent Time], ComName As Operator FROM MsgsQueue INNER JOIN " & _
        "Users ON MsgsQueue.UserID = Users.UserID  inner join Coms on MsgsQueue.ComID=Coms.ComID where  MsgsQueue.UserID in (Select UserID from Users where adminid=" + Session("AdminID") + ") And (MsgsQueue.ComID=" + dlComs0.SelectedValue.ToString + " Or " + dlComs0.SelectedValue.ToString + " =0) "

        If RadioButtonList1.SelectedValue <> 5 Then
            cmd.CommandText = cmd.CommandText + " and MsgsQueue.Status=" + RadioButtonList1.SelectedValue
        End If
        If TextBox3.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and MobileNO like '%" + TextBox3.Text + "%'"
        End If
        If TextBox5.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and  MsgsQueue.Msg like '%" + TextBox5.Text + "%' "
        End If
        If CheckBox4.Checked And DateTimePicker3.Text <> "" And DateTimePicker4.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and MsgTime between '" + DateTimePicker3.Text + " 00:00 AM' and '" + DateTimePicker4.Text + " 11:59 PM'"
        End If

        If Not CheckBox5.Checked And DropDownList2.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and MsgsQueue.UserID= " + DropDownList2.SelectedValue
        End If
        cmd.CommandText = cmd.CommandText + " order by MsgsQueue.batchID desc "

        cmd.Connection = Conn
        adp.SelectCommand = cmd
        adp.Fill(SampleSource)
        TableView = SampleSource.Tables(0).DefaultView

        GridView4.DataSource = TableView
        GridView4.DataBind()
        lbhis0.Text = GridView4.Rows.Count.ToString + " Records Found"
        'Else
        ' GridView4.Visible = False
        ' lbhis0.Text = "Type Part of Number or Part Of SMS and Press Search"
        If GridView4.Rows.Count > 0 Then
            btnprint1.Visible = True
            btnExport1.Visible = True


        End If
        btnprint.Visible = False
        btnExport.Visible = False
        BtnPrint0.Visible = False
        btnExport0.Visible = False

    End Sub

    Protected Sub Button20_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button20.Click
        GridView1.Visible = True
        lbhis0.Text = ""
        GridView4.Visible = False
        '    Panel1.Visible = False
        '  Panel2.Visible = True
        '  Panel3.Visible = False
        '  lbmsgtype.Text = "View message history"

        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView

        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()
        cmd.CommandText = "SELECT     Batchs.BatchID,UserFullName as [User], Batchs.Msg, Batchs.Sender, Groups.GroupName [List], Batchs.RegisterDate [Msg Time], Batchs.Status," & _
        " Batchs.StatusDate [Status Date],Batchs.Points,Batchs.Notes FROM  Batchs left outer JOIN Groups ON Batchs.GroupID = Groups.GroupID  inner join Users ON Batchs.UserID = Users.UserID where  Batchs.UserID in (Select UserID from Users where adminid=" + Session("AdminID") + ") "
        If RadioButtonList1.SelectedValue <> 5 Then
            cmd.CommandText = cmd.CommandText + " and Status=" + RadioButtonList1.SelectedValue
        End If
        If CheckBox4.Checked And DateTimePicker3.Text <> "" And DateTimePicker4.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and RegisterDate between '" + DateTimePicker3.Text + " 00:00 AM' and '" + DateTimePicker4.Text + " 11:59 PM'"
        End If
        If Not CheckBox5.Checked And DropDownList2.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and Batchs.UserID= " + DropDownList2.SelectedValue
        End If
        If TextBox3.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and MSG like '%" + TextBox3.Text + "%'"
        End If
        cmd.CommandText = cmd.CommandText + " Order By RegisterDate  desc"
        cmd.Connection = Conn
        adp.SelectCommand = cmd
        adp.Fill(SampleSource)
        TableView = SampleSource.Tables(0).DefaultView

        GridView1.DataSource = TableView
        GridView1.DataBind()
        Label24.Text = "(" + TableView.Count.ToString + ") Records Selected"
        If GridView1.Rows.Count > 0 Then
            BtnPrint0.Visible = True
            btnExport0.Visible = True


        End If
        btnprint.Visible = False
        btnExport.Visible = False
        btnprint1.Visible = False
        btnExport1.Visible = False

    End Sub

    Protected Sub GridView1_SelectedIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewSelectEventArgs) Handles GridView1.SelectedIndexChanging
        GridView4.Visible = True
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

        GridView4.DataSource = TableView
        GridView4.DataBind()
        If GridView4.Rows.Count > 0 Then
            btnprint1.Visible = True
            btnExport1.Visible = True


        End If
        btnprint.Visible = False
        btnExport.Visible = False
       

        lbhis0.Text = " BatchID =" + GridView1.Rows(e.NewSelectedIndex).Cells(1).Text + " >> No of Records =" + GridView4.Rows.Count.ToString
        Dim ScriptStr As New System.Text.StringBuilder

        ScriptStr.Append("<script language='javascript'>")
        ScriptStr.Append("try {")
        ScriptStr.Append("window.scrollTo(0, 100000);")
        ScriptStr.Append("} catch (e) {}")
        ScriptStr.Append("</script>")

        ClientScript.RegisterStartupScript(Me.GetType, "ScrollToBottom", ScriptStr.ToString)
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Panel7.Visible = True
        Label21.Text = "Outbox Report"
        Panel2.Visible = False
    End Sub

    Protected Sub Button24_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnExport.Click
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

    Protected Sub btnExport0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnExport0.Click
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
