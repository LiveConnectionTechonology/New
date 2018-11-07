<%@ page language="VB" autoeventwireup="false" inherits="Grops, App_Web_sge0iyyt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Groups</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function tblMain_onclick() {

}

// ]]>
</script>
    <style type="text/css">

        #form1
        {
            height: 421px;
            width: 1028px;
        }
        .style1
        {
            text-align: left;
        }
        .style4
        {
            font-size: large;
            font-weight: bold;
            font-style: italic;
            text-decoration: underline;
        }
        .style16
        {
            text-align: left;
            height: 26px;
            width: 22px;
            background-color: #CCCCFF;
        }
        .style21
        {
            text-align: left;
            height: 26px;
            background-color: #CCCCFF;
        }
        .style13
        {            text-align: right;
        }
        .style22
        {
            background-color: #FFFFFF;
        }
        .style23
        {
            width: 189px;
            background-color: #CCCCFF;
        }
        .style24
        {
            width: 99px;
            text-align: center;
            background-color: #CCCCFF;
        }
        .style25
        {
            text-align: left;
            font-size: x-large;
        }
        .style26
        {
            text-align: left;
            background-color: #CCCCFF;
        }
        .style27
        {
            text-align: left;
            height: 26px;
            width: 14px;
            background-color: #CCCCFF;
        }
        .style28
        {
            text-align: left;
            width: 193px;
            background-color: #CCCCFF;
        }
        .style29
        {
            font-size: x-large;
            font-weight: bold;
            font-style: italic;
            text-decoration: underline;
        }
        </style>
</head>
<script type="text/javascript">
    function printGrid() {
        var gridData = document.getElementById('<%= GridView2.ClientID %>');
        var windowUrl = 'about:blank';
        //set print document name for gridview
        var uniqueName = new Date();
        var windowName = 'Print_' + uniqueName.getTime();

        var prtWindow = window.open(windowUrl, windowName,
        'left=100,top=100,right=100,bottom=100,width=700,height=500');
        prtWindow.document.write('<html><head></head>');
        prtWindow.document.write('<body style="background:none !important">');
        prtWindow.document.write(gridData.outerHTML);
        prtWindow.document.write('</body></html>');
        prtWindow.document.close();
        prtWindow.focus();
        prtWindow.print();
        prtWindow.close();
    }
</script>
<body>
    <form id="form1" runat="server">
    <div style="text-align: right; width: 1024px; height: 160px; font-style: italic;">
        <asp:Image ID="Image1" runat="server" Height="160px" 
            ImageUrl="~/logo.jpg" Width="1024px" />
        &nbsp;&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label></div>
    <p class="style1" 
        
        style="width: 1024px; height: 39px; background-image: url('DATA%20SOFT/btn%20bg.jpg'); text-align: center;">
        <asp:Button ID="Button11" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/MainAgent.aspx" 
            Text="Home" Width="63px" />
        <asp:Button ID="Button12" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/SendSMS.aspx" 
            Text="Send SMS" Width="94px" />
        <asp:Button ID="Button13" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Groups.aspx" 
            Text="Contacts" Width="78px" />
        <asp:Button ID="Button14" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Outbox.aspx" 
            Text="Outbox" />
        <asp:Button ID="Button15" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Inbox.aspx" 
            Text="Inbox" Visible="False" />
        <asp:Button ID="Button16" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/ChangePwd.aspx" 
            Text="My Account" />
        <asp:Button ID="Button22" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/ServiceDefiniton.aspx" 
            Text="Definition" Width="86px" Visible="False"  />
        <asp:Button ID="Button23" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/ServiceAgreement.aspx" 
            Text="Agreement" Width="93px" Visible="False" />
        <asp:Button ID="Button24" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Price.aspx" 
            Text="Price" Width="62px" Visible="False" />
        <asp:Button ID="Button21" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/AboutUs.aspx" 
            Text="About Us" Width="90px" />
        <asp:Button ID="Button17" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Logout.aspx" 
            Text="Logout" Width="69px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="style1" 
        
        
        style="width: 1024px; height: 28px; background-image: url('DATA%20SOFT/btn%20bg.jpg'); text-align: center;">
        <asp:Button ID="Button18" runat="server" Text="Groups" 
            style="font-weight: 700" />
        <asp:Button ID="Button19" runat="server" Text="Search Contacts" 
            style="font-weight: 700" />
    </p>
    <asp:Panel ID="Panel1" runat="server">
        <table style="width: 908px; margin-left: 116px;">
            <tr>
                <td style="width: 81px">
                    <span class="style29">Groups</span><span class="style4">..</span></td>
                <td colspan="3">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="ComName" DataValueField="ComID" 
                        Visible="False">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 81px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style24">
                    <asp:Label ID="Label20" runat="server" style="font-weight: 700" Text="Name"></asp:Label>
                </td>
                <td class="style23">
                    <asp:TextBox ID="txtAdminFullName" runat="server" Width="302px"></asp:TextBox>
                </td>
                <td class="style22">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 81px">
                    &nbsp;</td>
                <td class="style24">
                    <asp:Label ID="Label21" runat="server" style="font-weight: 700" Text="Desc"></asp:Label>
                </td>
                <td class="style23">
                    <asp:TextBox ID="txtPWD" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td class="style22">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" height="30" style="text-align: center">
                    <asp:Button ID="btnNew" runat="server" Font-Size="9pt" Height="30px" Text="New" 
                        Width="60px" style="font-weight: 700" />
                    <asp:Button ID="btnSave" runat="server" Font-Size="9pt" Height="30px" 
                        Text="Add" Width="60px" style="font-weight: 700" />
                    <asp:Button ID="Button2" runat="server" Font-Bold="False" Font-Size="9pt" 
                        Height="30px" Text="Update" Width="60px" style="font-weight: 700" />
                </td>
            </tr>
            <tr>
                <td colspan="4" height="30">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="False" 
                        AutoGenerateColumns="False" AutoGenerateDeleteButton="False" 
                        AutoGenerateEditButton="False" DataSourceID="SqlDataSource1" 
                        Style="width: 100%; text-align: center;">
                        <Columns>
                            <asp:ButtonField ButtonType="button" CommandName="Edit" HeaderText="" 
                                Text="Edit" />
                            <asp:ButtonField ButtonType="button" CommandName="Delete" HeaderText="" 
                                Text="Delete" />
                            <asp:BoundField DataField="Group No" HeaderText="Group No" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Group No" />
                            <asp:BoundField DataField="Group Name" HeaderText="Group Name" 
                                SortExpression="Group Name" />
                            <asp:BoundField DataField="Desc" HeaderText="Desc" SortExpression="Desc" />
                            <asp:ButtonField ButtonType="button" CommandName="Contacts" HeaderText="" 
                                Text="Contacts" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:Panel ID="Panel3" runat="server" Height="249px">
            <table style="width: 911px; margin-left: 116px;">
                <tr>
                    <td class="style25" colspan="7">
                        <strong>Search Contacts</strong></td>
                </tr>
                <tr>
                    <td class="style26">
                        <strong>Name</strong>
                    </td>
                    <td class="style28">
                        <asp:TextBox ID="txtAdminFullName0" runat="server" Width="160px"></asp:TextBox>
                        &nbsp;&nbsp;
                    </td>
                    <td class="style26" colspan="4">
                        <strong>Mobile</strong>&nbsp; &nbsp;
                    </td>
                    <td class="style26">
                        <asp:TextBox ID="txtPWD0" runat="server" Width="160px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        <asp:Label ID="Label19" runat="server" Text="Group" style="font-weight: 700"></asp:Label>
                    </td>
                    <td class="style27" colspan="2">
                        <asp:DropDownList ID="DropDownList3" runat="server" 
                        DataSourceID="SqlDataSource3" DataTextField="GroupName" 
                        DataValueField="GroupID" Enabled="False" Width="160px">
                        </asp:DropDownList>
                        &nbsp;</td>
                    <td class="style21" colspan="2">
                        <strong>Operator</strong></td>
                    <td class="style21" colspan="2">
                        <asp:DropDownList ID="dlComs" runat="server" Width="160px">
                            <asp:ListItem Selected="True" Value="0">ALL</asp:ListItem>
                            <asp:ListItem Value="3">ZAIN</asp:ListItem>
                            <asp:ListItem Value="2">MTN</asp:ListItem>
                            <asp:ListItem Value="1">Sudani</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        <asp:CheckBox ID="CheckBox5" runat="server" AutoPostBack="True" 
                        Font-Bold="False" Font-Italic="False" 
                        style="text-align: left; font-style: italic; font-weight: 700;" 
                            Text="Select All" Visible="False" 
                        Width="139px" />
                    </td>
                    <td class="style26" colspan="3">
                        <asp:Button ID="btnNew0" runat="server" Font-Size="9pt" 
                            style="font-weight: 700" Text="Search" Width="60px" />
                        &nbsp;<asp:Button ID="Button6" runat="server" Font-Bold="False" Font-Size="9pt" 
                            style="text-align: center; font-weight: 700;" Text="Continue composing SMS" 
                        Width="173px" />
                    </td>
                    <td class="style13" colspan="3">
                        <asp:Label ID="lbRowCount" runat="server" style="background-color: #66FF66"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="7" class="style13">
                        <asp:GridView ID="GridView2" runat="server" style="text-align: center" 
                        Width="100%">
                            <Columns>
                                <asp:TemplateField>
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <br />
                        <asp:Button ID="btnPrint" runat="server" OnClientClick="printGrid()" 
                            Text="Print" Visible="False" />
                        <asp:Button ID="btnExport" runat="server" Text="Export" Visible="False" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <p>
                    &nbsp;</p>
    <p>
        &nbsp;</p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:BulkSMSConnectionString %>" 
            SelectCommand="SELECT Groups.GroupID AS [Group No], Groups.GroupName AS [Group Name], Groups.GroupDesc AS [Desc] FROM Groups INNER JOIN Users ON Groups.UserID = Users.UserID">
        </asp:SqlDataSource>
        <p>
        &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="Data Source=LCTDB;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=LCT321@@;Connect Timeout=300;Max Pool Size=32000" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT [ComID], [ComName] FROM [Coms]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="Data Source=LCTDB;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=LCT321@@;Connect Timeout=300;Max Pool Size=32000" 
            
                SelectCommand="SELECT [GroupID], [GroupName] FROM [Groups] WHERE ([UserID] = @UserID)">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>
    <p style="text-align: center; width: 1024px;">
        &nbsp;</p>
    <p style="text-align: center; width: 1024px;">
        &nbsp;</p>
    <p style="text-align: center; width: 1024px;">
        &nbsp;</p>
    <p style="text-align: center; width: 1024px;">
        &nbsp;</p>
     <div>
        <hr width="100%" style="width: 100%" />
         <p style="text-align: center; width: 1024px; height: 18px;">
           Copyright © 2016 - 2017 LCT All Rights Reserved         
    </div>
    <footer/>
</form>

</body>
</html>
