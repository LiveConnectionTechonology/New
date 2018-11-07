<%@ page language="VB" autoeventwireup="false" inherits="_Default, App_Web_sge0iyyt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Main menue</title>
    <style type="text/css">
        .Copyright
        {
            text-align: center;
            width: 1132px;
        }
        .style1
        {
            text-align: left;
        }
        #form1
        {
            height: 694px;
            width: 1028px;
        }
    </style>
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <div style="text-align: right; width: 1024px; height: 160px;">
        <asp:Image ID="Image1" runat="server" Height="160px" 
            ImageUrl="~/logo.jpg" Width="1024px" />
        <asp:Label ID="Label1" runat="server" 
            style="text-align: right; font-style: italic;"></asp:Label>
        &nbsp;&nbsp;<br />
    </div>
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
            Text="Contacts" Width="78px" 
            style="color: #FFFFFF; background-color: #E394AA" />
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
            Font-Underline="False" ForeColor="White" PostBackUrl="~/ServiceAgreement.aspx" 
            Text="Definition" Width="86px" Visible="False" />
        <asp:Button ID="Button19" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/ServiceDefiniton.aspx" 
            Text="Agreement" Width="93px" Visible="False" />
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
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
<p style="text-align: center; width: 1024px;">
                    &nbsp;</p>
    <p style="text-align: center; width: 1024px;">
                    &nbsp;</p>
    <p style="text-align: center; width: 1024px;">
                    &nbsp;</p>
    <p style="text-align: center; width: 1024px;">
                    &nbsp;</p>
    <p style="text-align: center; width: 1024px;">
                    &nbsp;</p>
    <p style="text-align: center; width: 1024px;">
                    &nbsp;</p>
    <p style="text-align: center; width: 1024px;">
                    &nbsp;</p>
    <p style="text-align: center; width: 1024px;">
                    &nbsp;</p>
    <p style="text-align: center; width: 1024px;">
                    &nbsp;</p>
    <p style="text-align: center; width: 1024px;">
                    &nbsp;</p>
     <footer>
   
        <hr width="100%" style="width: 1024px" />
        <p style="text-align: center; width: 1024px;">
           Copyright © 2016 - 2017 LCT All Rights Reserved         </p>
</form>

</body>
</html>
