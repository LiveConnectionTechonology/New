<%@ page language="VB" autoeventwireup="false" inherits="Users, App_Web_erlldjk0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Users</title>
    <style type="text/css">
        .Copyright
        {
            text-align: center;
        }
        #form1
        {
            height: 694px;
            width: 1028px;
        }
        .style1
        {
            text-align: left;
        }
        .style4
        {
            font-style: italic;
            font-weight: bold;
            font-size: large;
        }
        .style5
        {
            width: 135px;
        }
        .style3
        {
            text-decoration: underline;
        }
        .style6
        {
            background-color: #FFFFFF;
        }
        .style7
        {
            height: 36px;
            width: 174px;
            background-color: #CCCCFF;
        }
        .style8
        {
            height: 22px;
            width: 174px;
            background-color: #CCCCFF;
        }
        .style9
        {
            width: 174px;
            background-color: #CCCCFF;
        }
        .style10
        {
            height: 36px;
            width: 95px;
            background-color: #CCCCFF;
        }
        .style11
        {
            height: 22px;
            width: 95px;
            background-color: #CCCCFF;
        }
        .style12
        {
            width: 95px;
            background-color: #CCCCFF;
        }
        .style13
        {
            width: 36px;
            font-weight: bold;
            background-color: #CCCCFF;
        }
        .style14
        {
            font-weight: bold;
        }
        .style15
        {
            width: 174px;
            font-weight: bold;
            background-color: #CCCCFF;
        }
        .style16
        {
            width: 95px;
            font-weight: bold;
            background-color: #CCCCFF;
        }
        .style17
        {
            background-color: #CCCCFF;
        }
        .style18
        {
            font-weight: bold;
            background-color: #CCCCFF;
        }
        </style>
</head>
<script type="text/javascript">
    function printGrid() {
        var gridData = document.getElementById('<%= GridView1.ClientID %>');
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
    <div style="text-align: center; width: 1024px; height: 160px;">
        <asp:Image ID="Image1" runat="server" Height="160px" 
            ImageUrl="~/Logo.jpg" Width="1024px" />
        </div>
    <p class="style1" 
        
        style="width: 1024px; height: 39px; background-image: none; text-align: center;">
        <asp:Button ID="Button11" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Mainmenu.aspx" 
            Text="Home" Width="90px" />
        <asp:Button ID="Button12" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Users.aspx" 
            Text="Users" Width="94px" />
        <asp:Button ID="Button13" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Senders.aspx" 
            Text="Senders" Width="90px" />
        <asp:Button ID="Button14" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Trans.aspx" 
            Text="Payments" Width="90px" />
        <asp:Button ID="Button15" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Requests.aspx" 
            Text="Requests" Width="90px" />
        <asp:Button ID="Button18" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" 
            Text="Reports" Width="90px" PostBackUrl="~/Reports.aspx" />
        <asp:Button ID="Button16" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/ChangeAPwd.aspx" 
            Text="My Account" Width="101px" />
        <asp:Button ID="Button17" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Logout.aspx" 
            Text="Logout" Width="90px" />
        &nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <table id="tblMain" border="0" cellpadding="1" cellspacing="1" 
            style="font-size: 1em" width="100%">
            <tr>
                <td class="style5" valign="top">
                    <asp:Panel ID="Panel1" runat="server" Height="104px" Width="136px">
                    </asp:Panel>
                    <br />
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    <br />
                </td>
                <td style="width: 919px" valign="top">
                    <span class="style4"><span class="style6">Users Setting ..</span><br />
                    </span>
                    <br class="style3" />
                    <table style="width: 150px" align="center">
                        <tr>
                            <td class="style10">
                                <asp:Label ID="Label1" runat="server" Text="User Name " Width="100px" 
                                    style="font-weight: 700"></asp:Label>
                            </td>
                            <td class="style7">
                                <asp:TextBox ID="txtUserName" runat="server" Width="117px" 
                                    style="margin-left: 0px"></asp:TextBox>
                            </td>
                            <td colspan="3" style="height: 36px" class="style17">
                                <strong>Full Name&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtFullName" runat="server" Width="119px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                <strong>Password</strong></td>
                            <td class="style8">
                                <asp:TextBox ID="txtPWD" runat="server" Width="119px"></asp:TextBox>
                            </td>
                            <td colspan="3" style="height: 22px" class="style17">
                                <strong>Default Sender</strong>&nbsp;
                                <asp:TextBox ID="txtSender" runat="server" Width="119px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <strong>Email</strong></td>
                            <td class="style9">
                                <asp:TextBox ID="txtEmail" runat="server" Width="119px"></asp:TextBox>
                            </td>
                            <td colspan="3" class="style17">
                                <strong>Phone&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtPhone" runat="server" Width="119px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:CheckBox ID="ckActive" runat="server" Checked="True" Text="Is Active" />
                            </td>
                            <td class="style15">
                                <asp:CheckBox ID="ckSMPP" runat="server" Text="Have SMPP " Visible="False" />
                            </td>
                            <td style="width: 7486px" class="style18">
                                <asp:CheckBox ID="ckTrust" runat="server" Checked="True" Text="Is Trust" 
                                    Width="117px" />
                            </td>
                            <td class="style13">
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Is MMS User" Width="117px" 
                                    Visible="False" />
                            </td>
                            <td style="width: 309px" class="style18">
                                <asp:CheckBox ID="CheckBox2" runat="server" Text="HTTP " Width="117px" 
                                    Visible="False" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="text-align: center" class="style17">
                                <asp:Button ID="btnNew" runat="server" Font-Size="9pt" Height="26px" Text="New" 
                                    Width="56px" CssClass="style14" />
                                <asp:Button ID="btnSave" runat="server" Font-Size="9pt" 
                                    Text="Save" CssClass="style14" />
                                <asp:Button ID="Button2" runat="server" Font-Bold="False" Font-Size="9pt" 
                                    Text="Update" CssClass="style14" />
                            </td>
                            <td colspan="1" style="width: 309px; background-color: #CCCCFF;">
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" 
                        AutoGenerateEditButton="True" Style="width: 100%">
                    </asp:GridView>
                    <asp:Button ID="btnPrint" runat="server" OnClientClick="printGrid()" 
                        Text="Print" Visible="False" />
                    <asp:Button ID="btnExport" runat="server" Text="Export" 
            Visible="False" Height="26px" style="height: 26px" Width="56px" />
                            <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:BulkSMSConnectionString %>" 
                        SelectCommand="SELECT     UserID AS No, UserName AS [User Name], UserFullName AS [Full Name], RegisterdDate AS [Register Date], Points, Email, IsActive AS Active, SMPP,IsTrust AS Trust FROM Users">
                    </asp:SqlDataSource>
                    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="Data Source=LCTDB;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=LCT321@@;Connect Timeout=300;Max Pool Size=32000" 
                        SelectCommand="SELECT [ComID], [ComName] FROM [Coms]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
    <p style="text-align: left; width: 1024px;">
        &nbsp;</p>
    <p style="text-align: left; width: 1024px;">
        &nbsp;</p>
    <p style="text-align: left; width: 1024px;">
        &nbsp;</p>
     <footer>
   
        <hr style="width: 1024px" width="100%" />
    <p style="text-align: center; width: 1024px;">
       Copyright © 2016 - 2017 LCT All Rights Reserved    neen. All Rights Reserved.    neen. All Rights Reserved.    </p>
    </form>
</body>
</html>
