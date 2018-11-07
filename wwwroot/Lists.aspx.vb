Imports System.Data.SqlClient
Imports System.Data.OleDb
Imports System.IO
Imports System.Drawing



Partial Class Lists
    Inherits System.Web.UI.Page
    Private ReadOnly Property Conn() As SqlConnection
        Get
            Dim ConnectionToFetch As New SqlConnection("Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000")
            ConnectionToFetch.Open()
            Return ConnectionToFetch
        End Get
    End Property


    Private Shared prevPage As String = String.Empty
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
    

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("UserID") = "" Then
            Session.Clear()
            Response.Redirect("index.aspx")
        End If
        'If Session("IsAdmin") <> "Admin" Then
        'Response.Redirect("MainMenu.aspx")
        ' End If
        'Label3.Text = "Company : " + Session("CName")
        Label4.Text = "" + Session("GName")
        DropDownList1.Visible = False
        Label2.Visible = False

        '    Label18.Text = " : " + Session("userName")
        Dim cmd1 As New SqlCommand()
        cmd1.CommandText = "Select Points from Users where UserID=" + Session("UserID")
        '  Response.Write(cmd.CommandText)
        cmd1.Connection = Conn
        Dim reader As SqlDataReader = cmd1.ExecuteReader()

        If reader.Read Then
            Label19.Text = " User Name: " + Session("userName") + "  *** Remain Messages (" + reader(0).ToString + ")"
            reader.Close()
        End If

        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView

        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()
        cmd.CommandText = "SELECT     CustID AS [List No], CustMobileNo AS [Mobile No], CustName AS Name, Note AS Notes,ComName Operator FROM         dbo.Customers" & _
        " Inner Join Coms On Customers.comID=Coms.ComID Where GroupID=" + Session("AdID")

        cmd.Connection = Conn
        adp.SelectCommand = cmd
        adp.Fill(SampleSource)
        TableView = SampleSource.Tables(0).DefaultView

        GridView1.DataSource = TableView
        GridView1.DataBind()
        Label21.Text = GridView1.Rows.Count.ToString + " Records"
        Button2.Enabled = False
        If GridView1.Rows.Count > 0 Then
            btnPrint.Visible = True
            btnExport.Visible = True


        End If
        If Not IsPostBack Then
            prevPage = Request.UrlReferrer.ToString()
        End If

    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        txtAdminFullName.Text = ""

        lblMessage.Text = ""
        txtPWD.Text = ""
        txtNotes.Text = ""

        btnSave.Enabled = True
        Button2.Enabled = False


    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim cmd As New SqlCommand
        cmd.Connection = Conn
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.CommandText = "sp_InsertCustomers"
        cmd.Parameters.AddWithValue("@CustName", txtAdminFullName.Text)
        cmd.Parameters.AddWithValue("@UserID", Session("UserID"))
        cmd.Parameters.AddWithValue("@CustMobileNo", txtPWD.Text)
        cmd.Parameters.AddWithValue("@Note", txtNotes.Text)
        cmd.Parameters.AddWithValue("@GroupID", Session("AdID"))
        txtNotes.Text = Session("AdID") + " " + Session("UserID")
        Dim reader As SqlDataReader = cmd.ExecuteReader()

        If reader.Read Then

            lblMessage.Text = reader(0).ToString
        End If
        'cmd.ExecuteNonQuery()
        Button2.Enabled = False
        btnSave.Enabled = False
        btnNew_Click(sender, e)
        Page_Load(sender, e)
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim cmd As New SqlCommand
        cmd.Connection = Conn
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.CommandText = "sp_UpdateCustomers"
        cmd.Parameters.AddWithValue("@CustName", txtAdminFullName.Text)
        cmd.Parameters.AddWithValue("@CustID", Session("CID"))
        cmd.Parameters.AddWithValue("@CustMobileNo", txtPWD.Text)
        cmd.Parameters.AddWithValue("@Note", txtNotes.Text)
        cmd.Parameters.AddWithValue("@GroupID", DropDownList1.SelectedValue.ToString)
        'cmd.ExecuteNonQuery()
        ' cmd.ExecuteNonQuery()
        Dim reader As SqlDataReader = cmd.ExecuteReader()

        If reader.Read Then

            lblMessage.Text = reader(0).ToString
        End If
        Button2.Enabled = False
        btnSave.Enabled = True
        btnNew_Click(sender, e)
        Page_Load(sender, e)
    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing
        Button2.Enabled = True
        Dim cmd As New SqlCommand()
        Session("CID") = GridView1.Rows(e.NewEditIndex).Cells(1).Text
        cmd.CommandText = "Select * from Customers where CustID=" + GridView1.Rows(e.NewEditIndex).Cells(1).Text
        '  Response.Write(cmd.CommandText)
        cmd.Connection = Conn
        Dim reader As SqlDataReader = cmd.ExecuteReader()

        If reader.Read Then

            txtAdminFullName.Text = reader("CustName").ToString
            txtPWD.Text = reader("CustMobileNo").ToString

            DropDownList1.SelectedValue = reader("GroupID").ToString
            DropDownList1.Visible = True
            Label2.Visible = True
            Button2.Enabled = True
            btnSave.Enabled = False
        End If
    End Sub


    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Dim cmd As New SqlCommand()

        cmd.CommandText = "Delete from Customers where CustID=" + GridView1.Rows(e.RowIndex).Cells(1).Text
        '   Response.Write(cmd.CommandText)

        cmd.Connection = Conn
        cmd.ExecuteNonQuery()
        Response.Write("<script>alert('Deleted')</script>")
        Page_Load(sender, e)
    End Sub

    

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub
    Function InsertCust(ByVal sss As String, ByVal Name As String) As Integer
        Dim cmd As New SqlCommand
        cmd.Connection = Conn
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.CommandText = "sp_InsertCustomers"
        cmd.Parameters.AddWithValue("@CustName", Name)
        cmd.Parameters.AddWithValue("@UserID", Session("UserID"))
        cmd.Parameters.AddWithValue("@CustMobileNo", sss)
        cmd.Parameters.AddWithValue("@Note", txtNotes.Text)
        cmd.Parameters.AddWithValue("@GroupID", Session("AdID"))
        Dim reader As SqlDataReader = cmd.ExecuteReader()

        If reader.Read Then

            Return reader(1).ToString
        End If
        cmd.Connection.Close()
    End Function

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        If RadioButtonList1.SelectedValue = 0 Then
            'check that the file has been selected and it's a valid file
            lbcount.Text = ""
            sFileDir = "C:\Temp\" + Session("UserID") + "\"

            Dim f As String
            f = ""
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
                        f = sFileDir + sFileName
                        lblMessage.Visible = True
                        ' Label18.Text = sFileDir + sFileName
                        lblMessage.Text = "File: Uploaded Successfully"
                        '-----------------------------------



                        '----------------------

                    Else    'reject file
                        lblMessage.Visible = True
                        lblMessage.Text = "File Size if Over the Limit of " + _
                           lMaxFileSize
                        Label18.Text = ""
                    End If
                Catch exc As Exception    'in case of an error
                    lblMessage.Visible = True
                    lblMessage.Text = "An Error Occured. Please Try Again!"
                    DeleteFile(sFileDir + sFileName)
                    Label18.Text = File1.PostedFile.ContentLength.ToString
                End Try
            Else
                lblMessage.Visible = True
                lblMessage.Text = "Nothing to upload. Please Try Again!"
                Label18.Text = ""
            End If
            Dim line As String
            ' Open file.txt with the Using statement.

            Using r As StreamReader = New StreamReader(f)
                ' Store contents in this String.
                ' Dim line As String



                ' Read first line.
                line = r.ReadLine

                ' Loop over each line in file, While list is Not Nothing.
                Dim x As Integer = 0
                Dim Fa As Integer = 0
                Dim T As Integer = 0
                Dim Ex As Integer = 0
                Dim str As String = ""
                Dim Name As String = ""
                Dim pos As Integer = 0
                Do While (Not line Is Nothing)
                    pos = line.IndexOf(",")
                    If pos <> -1 Then
                        str = line.Substring(0, pos)
                        Name = line.Substring(pos + 1, line.Length - pos - 1)
                    Else
                        str = line
                    End If

                    If str.Length > 8 And Regex.IsMatch(str, "^[0-9 ]+$") Then

                        If str.Length = 9 And (str.Substring(0, 1) = "9" Or str.Substring(0, 1) = "1") Then
                            str = "249" + str
                        ElseIf str.Length = 10 And str.Substring(0, 1) = "0" And (str.Substring(1, 1) = "9" Or str.Substring(1, 1) = "1") Then
                            str = "249" + str.Substring(1, 9)
                        End If


                        x = InsertCust(str, Name)

                        Select Case x
                            Case 1
                                T = T + 1
                            Case 2
                                Ex = Ex + 1
                            Case 3
                                Fa = Fa + 1
                                Response.Write(str + ";")

                        End Select
                    End If
                    line = ""
                    Name = ""
                    line = r.ReadLine

                Loop
                lbcount.Visible = True
                lbcount.Text = " (" + T.ToString + ") Numbers Add , (" + Ex.ToString + ") Numbers Exist ,(" + Fa.ToString + ") Numbers Faild"
            End Using

            '---------------
            Button2.Enabled = False
            btnSave.Enabled = False
            btnNew_Click(sender, e)
            Page_Load(sender, e)
        Else
            insertExcl()
        End If

    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
      

    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        Dim cmd As New SqlCommand
        cmd.Connection = Conn
        cmd.CommandType = Data.CommandType.Text
        cmd.CommandText = "Delete from Customers where GroupID=" + Session("AdID")
       

        cmd.ExecuteNonQuery()
        cmd.Connection.Close()
        lblMessage.Text = "All contacts was deleted"
        Page_Load(sender, e)
    End Sub
    

    

    

    

    

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Response.Redirect(prevPage)
    End Sub
    Sub insertExcl()
        'check that the file has been selected and it's a valid file
        sFileDir = "C:\Temp\" + Session("UserID") + "\"


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
                    Label18.Text = sFileDir + sFileName
                    lblMessage.Text = "File: Uploaded Successfully"
                Else    'reject file
                    lblMessage.Visible = True
                    lblMessage.Text = "File Size if Over the Limit of " + _
                       lMaxFileSize
                    Label18.Text = ""
                End If
            Catch exc As Exception    'in case of an error
                lblMessage.Visible = True
                lblMessage.Text = "An Error Occured. Please Try Again!"
                DeleteFile(sFileDir + sFileName)
                Label18.Text = File1.PostedFile.ContentLength.ToString
            End Try
        Else
            lblMessage.Visible = True
            lblMessage.Text = "Nothing to upload. Please Try Again!"
            Label18.Text = ""
        End If
        If Label18.Text <> "" Then

            Dim SampleSource As New Data.DataSet
            Dim TableView As Data.DataView
            Dim adp = New OleDbDataAdapter()
            Dim cnExcel = New System.Data.OleDb.OleDbConnection("provider=Microsoft.ACE.OLEDB.12.0;data source=" + Label18.Text + " ;Extended Properties=Excel 5.0;")
            Using cnExcel
                cnExcel.Open()
                Dim cmd As New OleDbCommand("select * from [Sheet1$] ", cnExcel)
                '  adp.SelectCommand = cmd
                Dim reader As OleDbDataReader = cmd.ExecuteReader
                Dim x As Integer = 0
                Dim Fa As Integer = 0
                Dim T As Integer = 0
                Dim Ex As Integer = 0
                Dim str As String = ""
                Dim Name As String = ""
                Dim pos As Integer = 0
                While reader.Read

                  
                    str = reader(0).ToString
                    Name = reader(1).ToString
                  

                    If str.Length > 8 And Regex.IsMatch(str, "^[0-9 ]+$") Then

                        If str.Length = 9 And (str.Substring(0, 1) = "9" Or str.Substring(0, 1) = "1") Then
                            str = "249" + str
                        ElseIf str.Length = 10 And str.Substring(0, 1) = "0" And (str.Substring(1, 1) = "9" Or str.Substring(1, 1) = "1") Then
                            str = "249" + str.Substring(1, 9)
                        End If


                        x = InsertCust(str, Name)

                        Select Case x
                            Case 1
                                T = T + 1
                            Case 2
                                Ex = Ex + 1
                            Case 3
                                Fa = Fa + 1
                                Response.Write(str + ";")

                        End Select
                    End If
                    str = ""
                    Name = ""


                End While
                lbcount.Visible = True
                lbcount.Text = " (" + T.ToString + ") Numbers Add , (" + Ex.ToString + ") Numbers Exist ,(" + Fa.ToString + ") Numbers Faild"
            End Using

            '---------------
            Dim sender As Object
            Dim e As System.Web.UI.WebControls.GridViewPageEventArgs
            Button2.Enabled = False
            btnSave.Enabled = False
            btnNew_Click(sender, e)
            Page_Load(sender, e)



            cnExcel.Close()


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

    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox1.TextChanged

    End Sub
End Class

