<%@ page language="VB" autoeventwireup="false" inherits="ChangePwd, App_Web_4p0lrxd2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Change Password </title>
    <style type="text/css">

        #form1
        {
            height: 766px;
            width: 1027px;
        }
        .style1
        {
            text-align: left;
        }
        .style5
        {
            font-style: italic;
            font-weight: bold;
            text-decoration: underline;
            font-size: large;
        }
        .style6
        {
            color: black;
        }
        .style7
        {
            height: 4px;
        }
        .style8
        {
            text-align: center;
            background-color: #CCCCFF;
        }
        .style9
        {
            color: black;
            background-color: #CCCCFF;
        }
        </style>
</head>
<script type="text/javascript">
    function printGrid() {
        var gridData = document.getElementById('<%= GridView3.ClientID %>');
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
    <div style="text-align: right; width: 1024px; height: 160px;">
        <asp:Image ID="Image1" runat="server" Height="160px" 
            ImageUrl="~/logo.jpg" Width="1024px" />
        &nbsp;&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label></div>
    <p class="style1" 
        style="width: 1024px; height: 39px; background-image: url('DATA SOFT/btn bg.jpg');">
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
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    <p style="text-align: left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button20" runat="server" Text="Payment History" />
        <asp:Button 
            ID="Button19" runat="server" Text="Set Password" />
    </p>
        <asp:Panel ID="Panel3" runat="server" Visible="False">
            <table style="margin-left: 116px; width: 299px;" align="center">
                <tr>
                    <td class="style6" colspan="2">
                        <span class="style5">Change Password..</span></td>
                </tr>
                <tr>
                    <td class="style9">
                        Old Password</td>
                    <td class="style8">
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        New Password</td>
                    <td class="style8">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        Re_Password</td>
                    <td class="style8">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="style8">
                        <asp:Label ID="Label1" runat="server" ForeColor="#FF0033" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="style8">
                        <asp:Button ID="Button1" runat="server" Text="Change" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="style7">
                    </td>
                </tr>
            </table>
    </asp:Panel>
    <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;</p>
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            <span style="font-size: 1em">
            <asp:Panel ID="Panel1" runat="server" Height="233px" style="text-align: left">
                <span style="font-size: 1em">
                <span style="font-size: 1em; background-color: #FFFFFF;">
                <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" 
                    Text="Search By  Date" Checked="True" />
                </span>
                <p>
                    <asp:Label ID="Label3" runat="server" Text="From Date&nbsp;"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <mark:DateTimePicker ID="DateTimePicker1" runat="server" Format="yyyy/MM/dd" 
                        UseImageButtons="True"></mark:DateTimePicker>
                    <asp:Label ID="Label4" runat="server" Text="To Date&nbsp;&nbsp;"></asp:Label>
                    &nbsp;&nbsp;
                    <mark:DateTimePicker ID="DateTimePicker2" runat="server" Format="yyyy/MM/dd" 
                        UseImageButtons="True"></mark:DateTimePicker>
                </p>
                </span>
                <br>
                </br>
                <br />
                <asp:Button ID="Button18" runat="server" Text="Search" />
                <br />
                <asp:GridView ID="GridView3" runat="server" style="text-align: center" 
                    Width="100%">
                </asp:GridView>
                <asp:Label ID="lbhis" runat="server" style="font-weight: 700"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br></br>
            </asp:Panel>
            <p>
                &nbsp;</p>
            </span>
    </asp:Panel>
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
        <p style="text-align: center; width: 1024px;">
            &nbsp;</p>
    <p style="text-align: left; width: 1024px;">
                    <asp:Button ID="btnPrint" runat="server" OnClientClick="printGrid()" 
                        Text="Print" Visible="False" />
                    <asp:Button ID="btnExport" runat="server" Text="Export" 
                Visible="False" />
    </p>
        <hr width="100%" style="width: 1024px" />
        <p style="text-align: center; width: 1024px;">
           Copyright © 2016 - 2017 LCT All Rights Reserved         </p>
    <p>
    </p>
</form>

</body>
</html>
