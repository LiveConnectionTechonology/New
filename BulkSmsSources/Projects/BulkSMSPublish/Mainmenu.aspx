<%@ page language="VB" autoeventwireup="false" inherits="Mainmenu, App_Web_sge0iyyt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Administrator Menu</title>
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
        .style5
        {
            width: 135px;
        }
        .style6
        {
            width: 96%;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div style="text-align: right; width: 1024px; height: 160px;">
        <asp:Image ID="Image1" runat="server" Height="160px" 
            ImageUrl="~/logo.jpg" Width="1024px" />
        &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" 
            style="text-align: center; font-style: italic;"></asp:Label></div>
    <p class="style1" 
        
        style="width: 1024px; height: 39px; background-image: none; text-align: center;">
        &nbsp;&nbsp;<asp:Button ID="Button11" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Mainmenu.aspx" 
            Text="Home" Width="67px" />
        <asp:Button ID="Button12" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Users.aspx" 
            Text="Users" Width="63px" />
        <asp:Button ID="Button13" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Senders.aspx" 
            Text="Senders" Width="75px" />
        <asp:Button ID="Button14" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Trans.aspx" 
            Text="Payments" Width="84px" />
        <asp:Button ID="Button15" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Requests.aspx" 
            Text="Requests" Width="81px" />
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
             style="font-size: 1em; width: 100%; height: 198px;">
            <tr>
                <td class="style5" valign="top">
                    <asp:Panel ID="Panel1" runat="server" Height="104px" Width="136px">
                        <br />
                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                    <br />
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    <br />
                </td>
                <td style="width: 919px" valign="top">
                    <table class="style6">
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" 
                                    Font-Italic="False" Font-Size="Large" ForeColor="#0000C0" 
                                    PostBackUrl="~/Requests.aspx">Requests</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
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
    <p style="text-align: left; width: 1024px;">
        &nbsp;</p>
    <p style="text-align: left; width: 1024px;">
        &nbsp;</p>
        <hr style="width: 1024px; text-align: left;" width="100%" />
     <footer>
    <p style="text-align: center; width: 1024px;">
       Copyright © 2016 - 2017 LCT All Rights Reserved
    </p>
    <footer/>
    </form>
    </body>
</html>
