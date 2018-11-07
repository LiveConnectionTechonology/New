Imports System.Data.SqlClient
Imports System.IO
Partial Class SendMMS
    Inherits System.Web.UI.Page
    Private ReadOnly Property Conn() As SqlConnection
        Get
            Dim ConnectionToFetch As New SqlConnection("Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000")
            ConnectionToFetch.Open()
            Return ConnectionToFetch
        End Get
    End Property
    Dim sFileDir As String
    Dim lMaxFileSize As Long = 9996000
    Private Sub DeleteFile(ByVal strFileName As String)

        If strFileName.Trim().Length > 0 Then
            Dim fi As New FileInfo(strFileName)
            If (fi.Exists) Then    'if file exists, delete it
                fi.Delete()
            End If
        End If

    End Sub
    Protected Sub LinkButton12_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton12.Click

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Label2.Visible = False
        txtSender.Enabled = False
        If Session("IsTrust") = 1 Then
            txtSender.Enabled = True

        End If

        '  Session("UserID") = "1"
        If Session("UserID") = "" Then
            Session.Clear()
            Response.Redirect("index.aspx")
        End If
        Dim cmd1 As New SqlCommand()
        cmd1.CommandText = "Select Points from Users where UserID=" + Session("UserID")
        '  Response.Write(cmd.CommandText)
        cmd1.Connection = Conn
        Dim reader As SqlDataReader = cmd1.ExecuteReader()

        If reader.Read Then
            Label1.Text = " User Name: " + Session("userName") + "  *** Remain Messages (" + reader(0).ToString + ")"
            Session("Points") = reader(0).ToString

            reader.Close()
        End If
        '   Label1.Text = " : " + Session("userName")

        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView

        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()
        cmd.CommandText = "SELECT     Batchs.BatchID, Batchs.Msg, Batchs.Sender, Groups.GroupName [List], Batchs.RegisterDate [Register Date], Batchs.Status," & _
        " Batchs.StatusDate [Status Date],points,Notes,Path FROM  Batchs INNER JOIN Groups ON Batchs.GroupID = Groups.GroupID  where Batchs.UserID=" + Session("UserID")
        If RadioButtonList1.SelectedValue <> 5 Then
            cmd.CommandText = cmd.CommandText + " and Status=" + RadioButtonList1.SelectedValue
        End If
        cmd.CommandText = cmd.CommandText + " Order By RegisterDate  desc"
        cmd.Connection = Conn
        adp.SelectCommand = cmd
        adp.Fill(SampleSource)
        TableView = SampleSource.Tables(0).DefaultView

        GridView1.DataSource = TableView
        GridView1.DataBind()
        If Not IsPostBack Then
            DropDownList1.DataBind()
            DropDownList2.DataBind()
            'If txtSender.Text = "" And Session("IsTrust") = 1 Then
            'txtSender.Text = Session("DSender")
            ' End If
        End If



    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click


        txtPWD.Text = ""

        btnSave.Enabled = True



    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim cmd As New SqlCommand
        cmd.Connection = Conn
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.CommandText = "sp_InsertBatchs"

        cmd.Parameters.AddWithValue("@Msg", txtPWD.Text)
        cmd.Parameters.AddWithValue("@UserID", Session("UserID"))


        If Session("IsTrust") = 1 Then
            cmd.Parameters.AddWithValue("@Sender", txtSender.Text)
        Else
            cmd.Parameters.AddWithValue("@Sender", DropDownList2.SelectedValue.ToString)
        End If
        cmd.Parameters.AddWithValue("@GroupID", DropDownList1.SelectedValue.ToString)
        cmd.Parameters.AddWithValue("@IsMMS", "MMS")
        cmd.Parameters.AddWithValue("@Path", Label4.Text)
        Dim reader As SqlDataReader = cmd.ExecuteReader()

        If reader.Read Then
            Label3.Text = reader(0).ToString
            Session("Points") = reader(0).ToString


        End If

        btnSave.Enabled = False
        btnNew_Click(sender, e)
        Page_Load(sender, e)
    End Sub

    

    

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("CName") = DropDownList1.SelectedItem.ToString

        If Session("AdID") <> "" Then
            Response.Redirect("list.aspx")
        End If

    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Dim cmd As New SqlCommand()

        cmd.CommandText = "Delete from Groups where GroupID=" + GridView1.Rows(e.RowIndex).Cells(1).Text
        '   Response.Write(cmd.CommandText)

        cmd.Connection = Conn
        cmd.ExecuteNonQuery()
        Response.Write("<script>alert('Deleted')</script>")
        Page_Load(sender, e)
    End Sub

    



    

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        If txtSender.Text = "" Or Session("IsTrust") <> 1 Then
            txtSender.Text = DropDownList2.SelectedValue.ToString
        End If
    End Sub

    Protected Sub DropDownList2_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.Load
        DropDownList2_SelectedIndexChanged(sender, e)
    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
    End Sub

    

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        'check that the file has been selected and it's a valid file
        sFileDir = "C:\BulkMMS\" + Session("UserName") + "\"


        Try
            Directory.CreateDirectory(sFileDir)
        Catch ex As Exception
            lblStatus.Text = ex.Message
        End Try


        If (Not File1.PostedFile Is Nothing) _
           And (File1.PostedFile.ContentLength > 0) Then
            'determine file name
            Dim sFileName As String = _
               System.IO.Path.GetFileName(File1.PostedFile.FileName)
            Try
                If File1.PostedFile.ContentLength <= lMaxFileSize Then
                    'save file on disk
                    File1.PostedFile.SaveAs(sFileDir + sFileName)
                    lblMessage.Visible = True
                    Label4.Text = sFileDir + sFileName
                    lblMessage.Text = "File: Uploaded Successfully"
                Else    'reject file
                    lblMessage.Visible = True
                    lblMessage.Text = "File Size if Over the Limit of " + _
                       lMaxFileSize
                    Label4.Text = ""
                End If
            Catch exc As Exception    'in case of an error
                lblMessage.Visible = True
                lblMessage.Text = "An Error Occured. Please Try Again!"
                DeleteFile(sFileDir + sFileName)
                Label4.Text = File1.PostedFile.ContentLength.ToString
            End Try
        Else
            lblMessage.Visible = True
            lblMessage.Text = "Nothing to upload. Please Try Again!"
            Label4.Text = ""
        End If
    End Sub
End Class
