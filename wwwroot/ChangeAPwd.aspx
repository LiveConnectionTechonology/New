<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ChangeAPwd.aspx.vb" Inherits="ChangeAPwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Change Password</title>
    <style type="text/css">
        .style8
        {
            text-decoration;
            background-color: #CCCCFF;
        }
        .style9
        {
            color: #000000;
            font-weight: 700;
        }
        .style10
        {
            color: #000000;
            font-weight: bold;
            background-color: #CCCCFF;
        }
        .style11
        {
            background-color: #CCCCFF;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <table id="tblMain" border="0" cellpadding="1" cellspacing="1" style="font-size: 1em"
                width="100%">
                <tr>
                    <td>
                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/logo.jpg" 
                                                Style="width: 100%" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <p style="text-align: center">
        <asp:Button ID="Button11" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Mainmenu.aspx" 
            Text="Home" Width="79px" />
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
            Text="My Account" Width="118px" />
        <asp:Button ID="Button17" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Logout.aspx" 
            Text="Logout" Width="90px" />
        &nbsp;&nbsp;&nbsp; </p>
                    </td>
                </tr>
                <tr style="text-decoration">
                    <td valign="top" style="text-align: center">
                                            &nbsp;<i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                            &nbsp;</i><br />
                                            <asp:Label ID="Label2" runat="server" 
                                                style="font-weight: 700; font-size: x-large" Text="Change Password"></asp:Label>
                                            <br />
                        <br />
                        <table style="width: 277px" align="center">
                            <tr>
                                <td class="style10">
                                    Old Password</td>
                                <td class="style8">
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" CssClass="style9"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td class="style10">
                                    New Password</td>
                                <td class="style8">
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="style9"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td class="style10">
                                    Re_Password</td>
                                <td class="style8">
                                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="style9"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td colspan="2" class="style11">
                                    <asp:Label ID="Label1" runat="server" ForeColor="#FF0033" Text="Label" 
                                        CssClass="style9"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="2" class="style8">
                                    <asp:Button ID="Button1" runat="server" Text="Change" CssClass="style9" /></td>
                            </tr>
                        </table>
                        <br />
                        &nbsp;
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <hr width="100%" />
                        <div class="Copyright">
                            Copyright
                            <asp:Label ID="lblYears" runat="server">© 2011 - 2012
              </asp:Label>
                            &nbsp;...., Inc. All Rights Reserved.
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
