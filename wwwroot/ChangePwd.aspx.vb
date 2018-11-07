Imports System.Data.SqlClient
Imports System.IO

Partial Class ChangePwd
    Inherits System.Web.UI.Page
    Private ReadOnly Property Conn() As SqlConnection
        Get
            Dim ConnectionToFetch As New SqlConnection("Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000")
            ConnectionToFetch.Open()
            Return ConnectionToFetch
        End Get
    End Property
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Label2.Visible = True
        If TextBox2.Text = "" Then
            Label2.Text = ("You must select password")
            Exit Sub
        End If
        Dim cmd As New SqlCommand()
        cmd.CommandText = "Select * from Users where UserID=" + Session("UserID") + " and PWD='" + TextBox1.Text + "'"

        '  Response.Write(cmd.CommandText)
        cmd.Connection = Conn
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        If reader.Read Then
            If TextBox2.Text = TextBox3.Text And TextBox2.Text <> "" Then
                reader.Close()
                cmd.CommandText = "Update Users set PWD='" + TextBox2.Text + "' where UserID=" + Session("UserID")
                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('Password Changed')</script>")
                ' Response.Redirect("index.aspx")
            Else
                Label2.Text = "New password dose not match with re_password box value"
            End If
        Else
            Label2.Text = "Old password is not correcy"
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("UserID") = "" Then
            Session.Clear()
            Response.Redirect("index.aspx")
        End If

        '   Label2.Text = " : " + Session("userName")
        Label1.Visible = False
        Dim cmd As New SqlCommand()
        cmd.CommandText = "Select Points from Users where UserID=" + Session("UserID")
        '  Response.Write(cmd.CommandText)
        cmd.Connection = Conn
        Dim reader As SqlDataReader = cmd.ExecuteReader()

        If reader.Read Then
            Label2.Text = " User Name: " + Session("userName") + "  *** Remain Messages (" + reader(0).ToString + ")"
            reader.Close()
        End If
        ' If Session("IsAdmin") = "Agent" Then
        ''LinkButton11.Text = LinkButton20.Text
        'LinkButton11.PostBackUrl = LinkButton20.PostBackUrl
        'LinkButton12.Visible = False
        'LinkButton16.Visible = False
        'LinkButton17.Visible = False
        'LinkButton18.Visible = False
        'LinkButton19.Visible = False
        'LinkButton20.Visible = False

        'End If

        If Not IsPostBack Then
            Panel2.Visible = True
            Panel1.Visible = True
            Panel3.Visible = False
        End If
    End Sub












    Protected Sub CheckBox2_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox2.CheckedChanged
        'DateTimePicker1.Visible = False
        'DateTimePicker2.Visible = False
        'Label3.Visible = False
        'Label4.Visible = False
        'If CheckBox2.Checked Then
        'DateTimePicker1.Visible = True
        'DateTimePicker2.Visible = True
        ' Label3.Visible = True
        'Label4.Visible = True
        ' End If
    End Sub

    Protected Sub Button18_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button18.Click

        'GridView1.Visible = False
        '  Panel2.Visible = True
        '  GridView3.Visible = True
        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView

        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()

        '-------------------------------------------------------Trans
        cmd.CommandText = "SELECT    Trans.TranID AS ID,Users.UserName AS [User name],Users.UserFullName AS Name,Trans.Credit,  Trans.BalBefore AS [Points Before], " & _
" Trans.Points AS Points,Trans.price AS Price,Trans.TranDate AS Date,Trans.Notes FROM Trans INNER JOIN Users ON  Trans.UserID =Users.UserID where 1=1 and users.UserID= " + Session("UserID")
        If TextBox1.Text <> "" Then
            cmd.CommandText = cmd.CommandText + "  and Credit " + TextBox1.Text
        End If
        If CheckBox2.Checked And DateTimePicker1.Text <> "" And DateTimePicker2.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and TranDate between '" + DateTimePicker1.Text + " 00:00 AM' and '" + DateTimePicker2.Text + " 11:59 PM'"
        End If

        cmd.CommandText = cmd.CommandText + " Order By TranID desc"
        '-------------------------------------------------------End Trans




        cmd.Connection = Conn
        adp.SelectCommand = cmd
        adp.Fill(SampleSource)
        TableView = SampleSource.Tables(0).DefaultView

        GridView3.DataSource = TableView
        GridView3.DataBind()
        lbhis.Text = GridView3.Rows.Count.ToString + " Records Found"
        If GridView3.Rows.Count > 0 Then
            btnPrint.Visible = True
            btnPrint.Visible = True


        End If


    End Sub

    Protected Sub Button19_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button19.Click
        Panel3.Visible = True
        Panel1.Visible = False
        Panel2.Visible = False
    End Sub

    Protected Sub Button20_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button20.Click
        Panel2.Visible = True
        Panel1.Visible = True
        Panel3.Visible = False
    End Sub

    Protected Sub Button22_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnExport.Click
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
