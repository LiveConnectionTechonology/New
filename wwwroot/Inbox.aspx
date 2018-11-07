<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Inbox.aspx.vb" Inherits="Inbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Inbox </title>
    <style type="text/css">



        #form1
        {
            height: 421px;
            width: 1028px;
        }
        .style1
        {
            text-align: left;
            background-color: #FFFFFF;
        }
        .scrollup
        {
            text-align: left;
        }
        .style2
        {
            height: 23px;
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
<body style="font-size: 12pt; text-align: left;">
    <form id="form1" runat="server">
    <div style="text-align: right; width: 1024px; height: 160px; font-style: italic;">
        <asp:Image ID="Image1" runat="server" Height="160px" 
            ImageUrl="~/logo.jpg" Width="1024px" />
        &nbsp;&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label></div>
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
        &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <asp:Panel ID="Panel2" runat="server" Width="100%">
        <table style="width: 910px; margin-left: 116px;">
            <tr>
                <td class="style2">
                    <br />
                    <span style="font-size: 1em; background-color: #FFFFFF;">
                    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" 
                        Text="Search By  Date" />
                    <asp:Panel ID="Panel6" runat="server" Visible="False">
                        <span style="font-size: 1em">
                        <p>
                            From Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <mark:DateTimePicker ID="DateTimePicker1" runat="server" Format="yyyy/MM/dd" 
                                UseImageButtons="True"></mark:DateTimePicker>
                            To Date&nbsp;&nbsp;&nbsp;&nbsp;
                            <mark:DateTimePicker ID="DateTimePicker2" runat="server" Format="yyyy/MM/dd" 
                                UseImageButtons="True"></mark:DateTimePicker>
                        </p>
                        </span>
                    </asp:Panel>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="style25">
                    <asp:Panel ID="Panel5" runat="server" 
                        style="text-align: right; background-color: #FF6600; margin-left: 0px;" 
                        Width="900px">
                        <div class="style1">
                            MobileNumber&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="94px"></asp:TextBox>&nbsp; 
                            Message
                            <asp:TextBox ID="TextBox2" runat="server" Width="153px"></asp:TextBox>
                            Operator&nbsp;&nbsp;
                            <asp:DropDownList ID="dlComs" runat="server">
                                <asp:ListItem Selected="True" Value="0">ALL</asp:ListItem>
                                <asp:ListItem Value="3">ZAIN</asp:ListItem>
                                <asp:ListItem Value="2">MTN</asp:ListItem>
                                <asp:ListItem Value="1">Sudani</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button7" runat="server" Text="Search" />
                        </div>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:Panel ID="Panel4" runat="server">
                    </asp:Panel>
                    <asp:GridView ID="GridView3" runat="server" 
                        Style="text-align: center;" Width="100%">
                    </asp:GridView>
                    <asp:Label ID="lbhis" runat="server" style="font-weight: 700"></asp:Label>
                    <br />
                    <asp:Button ID="btnPrint" runat="server" OnClientClick="printGrid()" 
                        Text="Print" Visible="False" />
                    <asp:Button ID="btnExport" runat="server" Text="Export" Visible="False" />
                    <asp:LinkButton ID="LinkButton4" runat="server" Visible="False">View message historyView message history</asp:LinkButton>
                </td>
            </tr>
        </table>
    </asp:Panel>
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
    <p style="width: 1024px;" class="style1">
        <a class="scrollup" href="#">Top </a></p>
     <div>
        <hr width="100%" style="width: 100%" />
         <p style="text-align: center; width: 1024px; height: 18px;">
           Copyright © 2016 - 2017 LCT All Rights Reserved         
    </div>
    <footer/>
</form>

</body>
</html>
