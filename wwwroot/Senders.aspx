<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Senders.aspx.vb" Inherits="Senders" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Senders</title>
    <style type="text/css">

        .style1
        {
            text-align: left;
        }
        .style5
        {
            width: 135px;
        }
        .style8
        {
            font-style: italic;
            font-weight: bold;
            font-size: large;
        }
        .style9
        {
            background-color: #FFFFFF;
        }
        .style11
        {
            height: 22px;
            background-color: #CCCCFF;
        }
        .style13
        {
            width: 112px;
            height: 22px;
            font-weight: bold;
            background-color: #CCCCFF;
        }
        .style16
        {
            text-align: center;
            background-color: #CCCCFF;
        }
        .style17
        {
            width: 880px;
        }
        .style18
        {
            height: 50px;
            width: 937px;
        }
        .style19
        {
            font-style: italic;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; width: 1024px; height: 160px;">
        <asp:Image ID="Image1" runat="server" Height="160px" 
            ImageUrl="~/logo.jpg" Width="1024px" />
        &nbsp;&nbsp;</div>
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
        <table id="d" border="0" cellpadding="1" cellspacing="1" 
             style="font-size: 1em; ">
            <tr>
                <td class="style5" valign="top">
                    <asp:Panel ID="Panel1" runat="server" Height="104px" Width="136px">
                    </asp:Panel>
                    <br />
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    <br />
                </td>
                <td valign="top" class="style17">
                    <table id="tblMain0" border="0" cellpadding="1" cellspacing="1" 
                         style="font-size: 1em; width: 101%;">
                        <tr>
                            <td class="style18">
                                <span class="style9">
                                <span class="style19">Sender</span><span class="style8"> ..</span></span><span class="style8"><br />
                                </span>
                                <table style="width: 564px" align="center">
                                    <tr>
                                        <td class="style13">
                                            <span>User Name </span>
                                        </td>
                                        <td class="style11">
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                                DataSourceID="SqlDataSource3" DataTextField="UserName" DataValueField="UserID" 
                                                Width="300px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style13">
                                            Sender</td>
                                        <td class="style11">
                                            <asp:TextBox ID="txtSender" runat="server" Width="294px" MaxLength="11"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style16" colspan="2">
                                            <strong>
                                            <asp:Button ID="btnNew" runat="server" Font-Size="9pt" Text="New" 
                                                style="font-weight: 700" />
                                            <asp:Button ID="btnSave" runat="server" Font-Size="9pt" 
                                                Text="Save" style="font-weight: 700" />
                                            <asp:Button ID="Button2" runat="server" Font-Bold="False" Font-Size="9pt" 
                                                Text="Update" style="font-weight: 700" />
                                            </strong>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style18">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" 
                                    AutoGenerateEditButton="True" Style="width: 100%" Width="96%">
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </p>
    <p style="text-align: left; width: 1024px;">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000" 
            SelectCommand="SELECT [ComID], [ComName] FROM [Coms]"></asp:SqlDataSource>
        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:BulkSMSConnectionString2 %>" 
            SelectCommand="SELECT UserID, UserName FROM Users"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:BulkSMSConnectionString %>" 
            SelectCommand="SELECT [UserID], [UserName]+'  &gt;&gt;' +UserFullName   [UserName] FROM [Users] WHERE ([AdminID] = @AdminID)">
            <SelectParameters>
                <asp:SessionParameter Name="AdminID" SessionField="AdminID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p style="text-align: left; width: 1024px;">
        &nbsp;</p>
    <p style="text-align: left; width: 1024px;">
        &nbsp;</p>
    <p style="text-align: left; width: 1024px;">
        &nbsp;</p>
    <p style="text-align: left; width: 1024px;">
        &nbsp;</p>
    <p style="text-align: left; width: 1024px;">
        &nbsp;</p>
     <footer>
   
        <hr style="width: 1024px; text-align: left;" width="100%" />
    <p style="text-align: center; width: 1024px;">
       Copyright © 2016 - 2017 LCT All Rights Reserved     </p>
    </form>
</body>
</html>
