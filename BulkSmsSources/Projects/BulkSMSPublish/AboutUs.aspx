<%@ page language="VB" autoeventwireup="false" inherits="Index, App_Web_a2eo1eia" %>

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
            height: 372px;
            width: 1028px;
        }
        .MsoNormal
        {
            width: 430px;
        }
        .style30
        {
            width: 100%;
        }
        
    .style26
    {
        font-weight: normal;
        font-size: 12pt;
    }
        .style32
        {
            width: 376px;
        }
            
        .style5
        {
            color: #FFFFFF;
        }
        .style1
        {
            text-align: left;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" >
    <div style="text-align: center; width: 100%; height: 160px;">
        &nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="150px" 
            Width="1300px" ImageUrl="~/logo.jpg" />
    </div>
    <p 
        
        style="background-color: #003300; width:1300px">
        <b>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style5">&nbsp; Common Bulk SMS System &nbsp;
        </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></p>
    <p class="style1" 
        style="width: 1252px; height: 34px; background-image: none;">
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
        <asp:Button ID="Button17" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Logout.aspx" 
            Text="Logout" Width="69px" />
        <asp:Button ID="Button23" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Registration.aspx" 
            Text="Register" Width="90px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <table class="style30" dir="rtl">
        <tr>
            <td class="style32">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="16pt" 
                    ForeColor="#003300" Text="من نحن؟"></asp:Label>
                &nbsp;<asp:Image ID="Image4" runat="server" Height="60px" ImageUrl="~/Images/3.jpg" 
                    Width="89px" />
                <br />
                <br />
                <p dir="RTL" style="width: 860px">
                    <b style="font-size: 16pt"><span dir="LTR">&nbsp;</span></b></p>
                <span class="style26" lang="AR-SA" 
                        style="mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi">
                <br />
            </td>
        </tr>
        </table>
    <br />
    <br />
        <hr width="1350px" />
        <p style="text-align: center; width: 1024px; height: 18px;">
           Copyright © 2016 - 2017 LCT All Rights Reserved         
             
    ll Rights Reserved.         
             
         
             
    </form>

</body>
</html>
