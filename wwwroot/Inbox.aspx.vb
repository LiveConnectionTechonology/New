Imports System.Data.SqlClient
Imports System.IO

Partial Class Inbox
    Inherits System.Web.UI.Page

    Private ReadOnly Property Conn() As SqlConnection
        Get
            Dim ConnectionToFetch As New SqlConnection("Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000")
            ConnectionToFetch.Open()
            Return ConnectionToFetch
        End Get
    End Property


    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton4.Click

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
        cmd.CommandText = "SELECT     MsgQueueID AS ID, MobileNO AS [Mobile No], ContentID AS Message, MsgTime AS [SMS Time], ShortCode AS [Short Code]" & _
        " FROM         dbo.RecivedMsgs"

        cmd.Connection = Conn
        adp.SelectCommand = cmd
        adp.Fill(SampleSource)
        TableView = SampleSource.Tables(0).DefaultView

       
    End Sub

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click


        GridView3.Visible = True

        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView

        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()
        cmd.CommandText = "SELECT     MsgQueueID AS ID, MobileNO AS [Mobile No], ContentID AS Message, MsgTime AS [SMS Time], ShortCode AS [Short Code]" & _
    " ,ComName Operator FROM         RecivedMsgs inner Join Coms on RecivedMsgs.ComID=Coms.ComID where 1=1  And (RecivedMsgs.ComID=" + dlComs.SelectedValue.ToString + " Or " + dlComs.SelectedValue.ToString + " =0) "
        If TextBox1.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and MobileNO like '%" + TextBox1.Text + "%'"
        End If
        If TextBox2.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and  ContentID like '%" + TextBox2.Text + "%' "
        End If
        If CheckBox2.Checked And DateTimePicker1.Text <> "" And DateTimePicker2.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and MsgTime between '" + DateTimePicker1.Text + " 00:00 AM' and '" + DateTimePicker2.Text + " 11:59 PM'"
        End If
        cmd.Connection = Conn
        adp.SelectCommand = cmd
        adp.Fill(SampleSource)
        TableView = SampleSource.Tables(0).DefaultView

        GridView3.DataSource = TableView
        GridView3.DataBind()
        lbhis.Text = GridView3.Rows.Count.ToString + " Records Found"
        If GridView3.Rows.Count > 0 Then
            btnPrint.Visible = True
            btnExport.Visible = True


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


    

    

    

    Protected Sub CheckBox2_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox2.CheckedChanged
        Panel6.Visible = False
        If CheckBox2.Checked Then
            Panel6.Visible = True
        End If
    End Sub

    Protected Sub btnExport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnExport.Click
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



