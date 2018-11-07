Imports System.Data.SqlClient
Partial Class SendSMS
    Inherits System.Web.UI.Page
    Private ReadOnly Property Conn() As SqlConnection
        Get
            Dim ConnectionToFetch As New SqlConnection("Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000")
            ConnectionToFetch.Open()
            Return ConnectionToFetch
        End Get
    End Property
    
    Private Shared prevPage As String = String.Empty
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("IsMMS") = "1" Then
            Response.Redirect("SendMMS.aspx")
        End If
        'Label2.Visible = False
        txtSender.Enabled = False
        If Session("IsTrust") = 1 Then
            txtSender.Enabled = True

        End If

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
            Label1.Text = " Name: " + Session("userName") + "  *** Remain Messages (" + reader(0).ToString + ")"
            Session("Points") = reader(0).ToString
            reader.Close()
        End If
        '   Label1.Text = " : " + Session("userName")
       
        If Not IsPostBack Then
            ''''''''''''''''''''''''
            DropDownList3.DataBind()
            DropDownList3.Items.Insert(0, New ListItem("-- All --", "0"))

            If Session("Comto") = 1 Then
                Panel1.Visible = True
                Panel3.Visible = False
                DropDownList4.SelectedValue = 1
                DropDownList4_SelectedIndexChanged(sender, e)
                txtRecipient.Text = Session("To")
            Else
                Panel1.Visible = True
                Panel2.Visible = False
                Panel3.Visible = False

                lbttt.Text = "Select a Group"
                DropDownList1.Visible = True
                txtRecipient.Visible = False
                lbhint.Visible = False
                LinkButton3.Visible = False
                btnGroups.Visible = True
                CheckBox6.Visible = True
                '''''''''''''''''''
                ' prevPage = Request.UrlReferrer.ToString()
                DropDownList1.DataBind()
                DropDownList2.DataBind()
                'If txtSender.Text = "" And Session("IsTrust") = 1 Then
                'txtSender.Text = Session("DSender")
                ' End If
                '   Panel1.Visible = False
            End If
        End If
            'Button2.Enabled = False


    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click


        txtPWD.Text = ""

        btnSave.Enabled = True
        'Button2.Enabled = False


    End Sub
    Public Shared Function IsUnicode(ByVal input As String) As Boolean
        Dim asciiBytesCount = Encoding.ASCII.GetByteCount(input)
        Dim unicodBytesCount = Encoding.UTF8.GetByteCount(input)
        Return asciiBytesCount <> unicodBytesCount
    End Function

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        'Dim yes As Integer = 0
        'If txtPWD.Text.Length > 70 Then
        'Dim testmsg As Integer
        ' testmsg = MsgBox(" your script exceeds 70 Character ,you will be charged for a second message , do you want to continue ?", 1, "Alert")
        'If testmsg = 1 Then
        'yes = 0
        'Else
        ' yes = 1
        ' End If
        ' End If
        '  If txtPWD.Text <> "" And yes = 0 Then
        If txtRecipient.Visible Then
            If txtRecipient.Text <> "" Then


                Dim cmd As New SqlCommand()
                cmd.CommandType = Data.CommandType.StoredProcedure
                cmd.CommandText = "sp_HTTPInsertBatchs"

                cmd.Parameters.AddWithValue("@Msg", txtPWD.Text)
                If IsUnicode(txtPWD.Text) Then
                    cmd.Parameters.AddWithValue("@isUnicoe", 1)
                Else
                    cmd.Parameters.AddWithValue("@isUnicoe", 0)
                End If
                cmd.Parameters.AddWithValue("@UserID", Session("UserID"))
                cmd.Parameters.AddWithValue("@Sender", DropDownList2.Text)
                cmd.Parameters.AddWithValue("@MobileNumbers", txtRecipient.Text)
                Dim RS1 As Data.SqlClient.SqlDataReader

                cmd.Connection = Conn
                RS1 = cmd.ExecuteReader()
                If RS1.Read() Then
                    If RS1(0).ToString = "OK" Then
                        Label3.Text = "Messags Successfully Sent"
                    Else
                        Label3.Text = "Your Messags cost grater then points .Please recharge"

                    End If
                End If
            Else
                Label3.Text = "You Must Add Recipients to Recipient Box "
            End If

        Else
            Dim cmd As New SqlCommand
            cmd.Connection = Conn

            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.CommandText = "sp_InsertBatchs"

            cmd.Parameters.AddWithValue("@Msg", txtPWD.Text)
            If IsUnicode(txtPWD.Text) Then
                cmd.Parameters.AddWithValue("@isUnicoe", 1)
            Else
                cmd.Parameters.AddWithValue("@isUnicoe", 0)
            End If
            cmd.Parameters.AddWithValue("@UserID", Session("UserID"))

            cmd.Parameters.AddWithValue("@ALL", CheckBox6.Checked)
            'If Session("IsTrust") = 1 Then
            'cmd.Parameters.AddWithValue("@Sender", txtSender.Text)
            'Else
            cmd.Parameters.AddWithValue("@Sender", DropDownList2.SelectedValue.ToString)
            ' End If
            cmd.Parameters.AddWithValue("@GroupID", DropDownList1.SelectedValue.ToString)
            Dim reader As SqlDataReader = cmd.ExecuteReader()

            If reader.Read Then
                Label3.Text = reader(0).ToString
            End If

        End If
        'Button2.Enabled = False
        btnSave.Enabled = False
        btnNew_Click(sender, e)
        Page_Load(sender, e)
        ' Else
        ' Label3.Text = ""
        ' End If

    End Sub

    

    

    

    

    

    

    

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        If txtSender.Text = "" Or Session("IsTrust") <> 1 Then
            txtSender.Text = DropDownList2.SelectedValue.ToString
        End If
    End Sub

    Protected Sub DropDownList2_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.Load
        DropDownList2_SelectedIndexChanged(sender, e)
    End Sub

    

    Protected Sub txtPWD_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtPWD.TextChanged
        ' Dim MyString() As String = Split(txtPWD.Text, "")

        'txtlength.Text = txtPWD.Text.Length.ToString
    End Sub
    



    

    

    

    

    

    

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click

        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = True
    End Sub

    Protected Sub btnGroups_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnGroups.Click
        Response.Redirect("Groups.aspx")
        '  LinkButton2_Click(sender, e)
    End Sub

    Protected Sub btnNew0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew0.Click
        CheckBox5.Checked = False
        lbRowCount.Text = ""
        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView

        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()
        cmd.CommandText = "SELECT Customers.CustMobileNo,Customers.CustName,Groups.GroupName,ComName as Operator FROM Customers INNER JOIN Groups ON Customers.GroupID =Groups.GroupID " & _
        " Inner Join Coms on Customers.ComID=Coms.ComID where  Customers.UserID=" + Session("UserID") + " And (Customers.ComID=" + dlComs.SelectedValue.ToString + " Or " + dlComs.SelectedValue.ToString + " =0 ) "
        If txtAdminFullName.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and CustName Like '%" + txtAdminFullName.Text + "%'"
        End If
        If txtPWD0.Text <> "" Then
            cmd.CommandText = cmd.CommandText + " and CustMobileNo Like '%" + txtPWD0.Text + "%'"
        End If
        If DropDownList3.Text <> "0" Then
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
    End Sub

    

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        Session("To") = ""

        Panel1.Visible = True
        Panel3.Visible = False

        Dim i As Integer = 0

        If GridView2.Rows.Count > 0 Then

            For Each gvr As GridViewRow In GridView2.Rows
                If (CType(gvr.FindControl("CheckBox1"), CheckBox)).Checked = True Then
                    i += 1
                    Session("To") = Session("To") + gvr.Cells(1).Text + ";"


                End If
            Next gvr

        End If

        If i > 0 Then
            
            txtRecipient.Text = Session("To")

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

    
    Protected Sub CheckBox6_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox6.CheckedChanged
        Label3.Text = ""
        lbttt.Text = "Select a Group"
        DropDownList1.Visible = True
        If CheckBox6.Checked Then
            DropDownList1.Visible = False
            lbttt.Text = ""
            Label3.Text = "You Want to Send This Message to All Groups"
        End If
    End Sub

    

    

    

    

    

    

    Protected Sub DropDownList4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList4.SelectedIndexChanged
        If DropDownList4.SelectedValue = 1 Then
            Panel1.Visible = True
            Panel3.Visible = False
            Panel2.Visible = False

            lbttt.Text = "Recipients"
            DropDownList1.Visible = False
            txtRecipient.Visible = True
            lbhint.Visible = True
            LinkButton3.Visible = True
            btnGroups.Visible = False
            CheckBox6.Visible = False
        Else
            Panel1.Visible = True
            Panel2.Visible = False
            Panel3.Visible = False

            lbttt.Text = "Select a Group"
            DropDownList1.Visible = True
            txtRecipient.Visible = False
            lbhint.Visible = False
            LinkButton3.Visible = False
            btnGroups.Visible = True
            CheckBox6.Visible = True

        End If
    End Sub
End Class
