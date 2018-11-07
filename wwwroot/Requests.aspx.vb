
Imports System.Data.SqlClient
Partial Class Requests
    Inherits System.Web.UI.Page
    Private ReadOnly Property Conn() As SqlConnection
        Get
            Dim ConnectionToFetch As New SqlConnection("Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000")
            ConnectionToFetch.Open()
            Return ConnectionToFetch
        End Get
    End Property
    

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        txtSender.Enabled = False
        If Session("IsTrust") = 1 Then
            txtSender.Enabled = True
            txtSender.Text = Session("DSender")
        End If

        If Session("UserID") = "" Then
            Session.Clear()
            Response.Redirect("index.aspx")
        End If

        'Label1.Text = " : " + Session("userName")

        If Not IsPostBack Then
            Button4_Click(sender, e)
        End If

    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click


        txtsms.Text = ""

      


    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim cmd As New SqlCommand
        cmd.Connection = Conn
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.CommandText = "sp_SendBatchs"
        cmd.Parameters.AddWithValue("@BatchID", Session("BatchID"))
        cmd.ExecuteNonQuery()
      
        btnNew_Click(sender, e)
        Button4_Click(sender, e)
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim cmd As New SqlCommand
        cmd.Connection = Conn
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.CommandText = "sp_RejectBatchs"
        cmd.Parameters.AddWithValue("@BatchID", Session("BatchID"))
        cmd.Parameters.AddWithValue("@Status", 2)
        cmd.Parameters.AddWithValue("@Notes", txtNotes.Text)
        cmd.ExecuteNonQuery()


        btnNew_Click(sender, e)
        Button4_Click(sender, e)
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand

        Dim currentCommand As String = e.CommandName
        Dim currentRowIndex As Integer = Int32.Parse(e.CommandArgument.ToString())

        Dim cmd As New SqlCommand()
        Session("BatchID") = GridView1.Rows(currentRowIndex).Cells(2).Text
        cmd.CommandText = "SELECT     Batchs.BatchID, Batchs.Msg, Batchs.Sender, Groups.GroupName , Batchs.RegisterDate, Batchs.Status," & _
        " Batchs.StatusDate ,Notes FROM  Batchs INNER JOIN Groups ON Batchs.GroupID = Groups.GroupID  where  BatchID=" + GridView1.Rows(currentRowIndex).Cells(2).Text
        '  Response.Write(cmd.CommandText)
        cmd.Connection = Conn
        Dim reader As SqlDataReader = cmd.ExecuteReader()

        If reader.Read Then


            txtlist.Text = reader("GroupName").ToString
            txtNotes.Text = reader("Notes").ToString
            txtSender.Text = reader("Sender").ToString
            txtsms.Text = reader("msg").ToString
            txttime.Text = reader("RegisterDate").ToString
        End If
    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing

      
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand
        cmd.Connection = Conn
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.CommandText = "sp_RejectBatchs"
        cmd.Parameters.AddWithValue("@BatchID", Session("BatchID"))
        cmd.Parameters.AddWithValue("@Status", 3)
        cmd.Parameters.AddWithValue("@Notes", txtNotes.Text)
        cmd.ExecuteNonQuery()


        btnNew_Click(sender, e)
        Button4_Click(sender, e)

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

    

    

    

    

    
    Protected Sub RadioButtonList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButtonList1.SelectedIndexChanged
        Button4_Click(sender, e)

    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub CheckBox5_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox5.CheckedChanged
        Dim chk As CheckBox
        If CheckBox5.Checked Then
            For Each rowItem As GridViewRow In GridView1.Rows
                chk = CType(rowItem.Cells(0).FindControl("CheckBox1"), CheckBox)
                chk.Checked = CType(sender, CheckBox).Checked
            Next
        End If
        If Not CheckBox5.Checked Then
            For Each rowItem As GridViewRow In GridView1.Rows
                chk = CType(rowItem.Cells(0).FindControl("CheckBox1"), CheckBox)
                chk.Checked = False

            Next
        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click

        
        For Each gvr As GridViewRow In GridView1.Rows
            If (CType(gvr.FindControl("CheckBox1"), CheckBox)).Checked = True Then
                Dim cmd As New SqlCommand
                cmd.Connection = Conn
                cmd.CommandType = Data.CommandType.StoredProcedure
                cmd.CommandText = "sp_SendBatchs"
                cmd.Parameters.AddWithValue("@BatchID", gvr.Cells(2).Text)
                cmd.ExecuteNonQuery()

               
            End If
        Next gvr
        btnNew_Click(sender, e)
        Button4_Click(sender, e)
    End Sub


    
    
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim SampleSource As New Data.DataSet
        Dim TableView As Data.DataView

        Dim cmd As New SqlCommand()
        Dim adp As New SqlDataAdapter()
        cmd.CommandText = "SELECT     Batchs.BatchID,UserName [USer], Batchs.Msg, Batchs.Sender,   Batchs.RegisterDate [Register Date], Batchs.Status,Batchs.Points," & _
       " Batchs.StatusDate [Status Date],Batchs.Notes  ,Path, Substring(mobileNumbers,1,100) FROM  Batchs   Inner Join Users On Batchs.UserID=Users.UserID where Batchs.points<>0  "
        ' where Batchs.UserID=" + Session("UserID")
        If RadioButtonList1.SelectedValue <> 5 Then
            cmd.CommandText = cmd.CommandText + " and Status=" + RadioButtonList1.SelectedValue
        End If
        cmd.CommandText = cmd.CommandText + " Order By BatchID desc"

        '   Response.Write(cmd.CommandText)
        cmd.Connection = Conn
        adp.SelectCommand = cmd
        adp.Fill(SampleSource)
        TableView = SampleSource.Tables(0).DefaultView

        GridView1.DataSource = TableView
        GridView1.DataBind()

    End Sub
End Class

