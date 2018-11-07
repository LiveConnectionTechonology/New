<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style type="text/css">

        .style1
        {
            text-align: left;
        }
        .style6
        {
            color: black;
        }
                
        .style5
        {
            font-style: italic;
            font-weight: bold;
            text-decoration: underline;
            font-size: large;
            text-align: center;
        }
        .style7
        {
            background-color: #CCCCFF;
        }
        .style8
        {
            color: black;
            font-weight: bold;
            background-color: #CCCCFF;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: right; width: 1024px; height: 160px;">
        <asp:Image ID="Image1" runat="server" Height="160px" 
            ImageUrl="~/logo.jpg" Width="1024px" />
        &nbsp;&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label></div>
    <p class="style1" 
        
        style="width: 1024px; height: 39px; background-image: url('DATA%20SOFT/btn%20bg.jpg'); text-align: center;">
        <asp:Button ID="Button11" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/MainAgent.aspx" 
            Text="Home" Width="63px" />
        <asp:Button ID="Button18" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/ServiceDefiniton.aspx" 
            Text="Definition" Width="86px" Visible="False"  />
        <asp:Button ID="Button19" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/ServiceAgreement.aspx" 
            Text="Agreement" Width="93px" Visible="False"  />
        <asp:Button ID="Button20" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Price.aspx" 
            Text="Price" Width="62px" Visible="False" />
        <asp:Button ID="Button21" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/AboutUs.aspx" 
            Text="About Us" Width="90px" />
    </p>
    <p style="text-align: left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;</p>
        <table style="margin-left: 116px" align="center">
            <tr>
                <td class="style6" colspan="2">
                    <span class="style5">Regisration Form..</span></td>
            </tr>
            <tr>
                <td class="style8">
                    Ful Name</td>
                <td class="style7">
                    <asp:TextBox ID="txtFulName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Username</td>
                <td class="style7">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Password</td>
                <td class="style7">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Email Address</td>
                <td class="style7">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Phone Number </td>
                <td class="style7">
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                                Default Sender&nbsp;</td>
                <td class="style7">
                    <asp:TextBox ID="txtSenderName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style7">
                    <asp:Label ID="Label1" runat="server" ForeColor="#FF0033"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style7">
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" Text="I Agree" />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Conditions.aspx">Terms and Conditions</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Register " 
                        style="font-weight: 700" />
                &nbsp;<asp:Button ID="btnNew" runat="server" Text="New" Width="49px" 
                        style="font-weight: 700" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
        <hr width="100%" style="width: 1024px" />
        <p style="text-align: center; width: 1024px;">
           Copyright © 2016 - 2017 LCT All Rights Reserved         </p>
    <p>
    </p>
</form>

    
    </form>
</body>
</html>
