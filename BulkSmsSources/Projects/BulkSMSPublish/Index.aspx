<%@ page language="VB" autoeventwireup="false" inherits="Index, App_Web_4p0lrxd2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Bulk SMS Login</title>
    <style type="text/css">
        .Copyright
        {
            text-align: left;
        }
        #form1
        {
            height: 256px;
            width: 1024px;
            text-align: right;
        }
        .MsoNormal
        {
            width: 430px;
        }
            
        .style1
        {
            text-align: left;
        }
        .style6
        {
          
        }
        .style7
        {
            width: 100%;
        }
        .style8
        {
            width: 428px;
            text-align: center;
        }
        .style9
        {
            width: 425px;
        }
        </style>
</head>
<body  background="bulk3.jpg">
    <form id="form1" runat="server" >
    
        <p class="style1" 
        
            style="width: 1024px; height: 17px; background-image: none; margin-bottom: 19px;">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Logo.jpg" />
        </p>
        <p class="style1" 
        
            style="width: 1024px; height: 17px; background-image: none; margin-bottom: 19px;">
            &nbsp;</p>
    <p class="style1" 
        style="width: 1024px; height: 34px; background-image: none;">
        <asp:Button ID="Button11" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/MainAgent.aspx" 
            Text="Home" Width="63px" Visible="False" />
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
        <asp:Button ID="Button18" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/ServiceDefiniton.aspx" 
            Text="Definition" Width="86px" Visible="False" />
        <asp:Button ID="Button19" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/ServiceAgreement.aspx" 
            Text="Agreement" Width="93px" Visible="False" />
        <asp:Button ID="Button20" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Price.aspx" 
            Text="Price" Width="62px" Visible="False" />
        <asp:Button ID="Button21" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/AboutUs.aspx" 
            Text="About Us" Width="90px" Visible="False" />
        <asp:Button ID="Button17" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Logout.aspx" 
            Text="Logout" Width="69px" />
        &nbsp;</p>
    <table class="style6">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label1" runat="server" Width="230px"></asp:Label>
            </td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;
                <asp:Label ID="Label2" runat="server" Width="230px"></asp:Label>
            </td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
    </table>
    &nbsp;<br />
    <br />
    <br />
        <table class="style7">
            <tr>
                <td class="style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
                <td class="style8">
        <asp:Login ID="Login1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" 
            BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" CssClass="Copyright" 
            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="79px" 
            TextLayout="TextOnTop" Width="218px">
            <TextBoxStyle Font-Size="0.8em" Width="100px" />
            <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="#FFFFFF" />
        </asp:Login>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style8">
                <asp:Button ID="Button23" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Registration.aspx" 
            Text="Register Now" Width="124px" 
                    style="color: #000000; background-color: #FFFFFF; text-align: left;" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>

</body>
</html>
