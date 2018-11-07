<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Template.aspx.vb" Inherits="Template" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

        .style1
        {
            text-align: left;
        }
        .style5
        {
            width: 135px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div style="text-align: center; width: 1024px; height: 160px;">
        <asp:Image ID="Image1" runat="server" Height="160px" 
            ImageUrl="~/logo.jpg" Width="1024px" />
        &nbsp;&nbsp;</div>
    <p class="style1" 
        style="width: 1024px; height: 39px; background-image: url('btn bg.jpg');">
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/DATA SOFT/home btn.jpg" PostBackUrl="~/MainAgent.aspx" />
        <asp:ImageButton ID="ImageButton2" runat="server" 
            ImageUrl="~/DATA SOFT/send sms.jpg" PostBackUrl="~/SendSMS.aspx" />
        <asp:ImageButton ID="ImageButton3" runat="server" 
            ImageUrl="~/DATA SOFT/lists btn.jpg" PostBackUrl="~/Groups.aspx" />
        <asp:ImageButton ID="ImageButton4" runat="server" 
            ImageUrl="~/DATA SOFT/account.jpg" PostBackUrl="~/ChangePwd.aspx" />
        <asp:ImageButton ID="ImageButton5" runat="server" 
            ImageUrl="~/DATA SOFT/logout btn.jpg" PostBackUrl="~/Logout.aspx" />
    </p>
    <p>
        <table id="tblMain" border="0" cellpadding="1" cellspacing="1" 
             style="font-size: 1em; width: 96%;">
            <tr>
                <td class="style5" valign="top">
                    <asp:Panel ID="Panel1" runat="server" Height="104px" Width="136px">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/DATA SOFT/ARROW2R.BMP" />
                        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
                            Font-Italic="False" ForeColor="White" PostBackUrl="~/Users.aspx" 
                            style="color: #003366">Users Setting</asp:LinkButton>
                        <br />
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/DATA SOFT/ARROW2R.BMP" />
                        <asp:LinkButton ID="LinkButton12" runat="server" Font-Bold="True" 
                            Font-Italic="False" ForeColor="White" PostBackUrl="~/Senders.aspx" 
                            style="color: #003366">Senders</asp:LinkButton>
                        <br />
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/DATA SOFT/ARROW2R.BMP" />
                        <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
                            Font-Italic="False" ForeColor="White" PostBackUrl="~/Trans.aspx" 
                            style="color: #003366">Payments</asp:LinkButton>
                        <br />
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/DATA SOFT/ARROW2R.BMP" />
                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                            Font-Italic="False" ForeColor="White" PostBackUrl="~/Requests.aspx" 
                            style="color: #003366">Requests</asp:LinkButton>
                        <br />
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/DATA SOFT/ARROW2R.BMP" />
                        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" 
                            Font-Italic="False" ForeColor="White" PostBackUrl="~/Mainmenu.aspx" 
                            style="color: #003366">Reports</asp:LinkButton>
                    </asp:Panel>
                    <br />
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    <br />
                </td>
                <td style="width: 919px" valign="top">
                    &nbsp;</td>
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
    <p style="text-align: left; width: 1024px;">
        &nbsp;</p>
     <footer>
   
        <hr style="width: 1024px; text-align: left;" width="100%" />
    <p style="text-align: center; width: 1024px;">
       Copyright © 2016 - 2017 LCT All Rights Reserved
    </p>
    </form>
  
</body>
</html>
