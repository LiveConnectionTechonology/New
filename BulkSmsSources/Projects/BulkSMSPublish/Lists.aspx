<%@ page language="VB" autoeventwireup="false" inherits="Lists, App_Web_g5y5yepo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Lists</title>
    <style type="text/css">

        #form1
        {
            height: 421px;
            width: 1024px;
        }
        .style1
        {
            text-align: left;
        }
        .style5
        {
            width: 146px;
            height: 25px;
            background-color: #CCCCFF;
        }
        .style6
        {
            text-align: left;
            height: 32px;
            background-color: #CCCCFF;
        }
        .style7
        {
            height: 32px;
            background-color: #CCCCFF;
        }
        .style8
        {
            text-align: left;
            height: 26px;
            background-color: #CCCCFF;
        }
        .style10
        {
            width: 146px;
            height: 26px;
            background-color: #CCCCFF;
        }
        .style11
        {
            text-align: left;
            height: 33px;
            background-color: #CCCCFF;
        }
        .style13
        {
            width: 288px;
            height: 33px;
            background-color: #CCCCFF;
        }
        .style14
        {
            height: 25px;
            background-color: #CCCCFF;
        }
        .style15
        {
            height: 26px;
            background-color: #CCCCFF;
        }
        .style18
        {
            width: 36px;
            height: 25px;
            background-color: #CCCCFF;
        }
        .style20
        {
            width: 36px;
            height: 33px;
            background-color: #CCCCFF;
        }
        .style21
        {
            text-align: left;
            height: 25px;
            background-color: #CCCCFF;
        }
        .style22
        {
            width: 96px;
            height: 33px;
            background-color: #CCCCFF;
        }
        .style23
        {
            background-color: #CCCCFF;
        }
    </style>
    <script type="text/javascript">
    function printGrid() {
        var gridData = document.getElementById('<%= GridView1.ClientID %>');
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
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: right; width: 1024px; height: 160px;">
        <asp:Image ID="Image1" runat="server" Height="160px" 
            ImageUrl="~/logo.jpg" Width="1024px" />
        &nbsp;&nbsp;<asp:Label ID="Label19" runat="server" style="font-style: italic"></asp:Label></div>
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
    <p style="text-align: left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Label ID="Label20" runat="server" Width="110px"></asp:Label><asp:LinkButton 
            ID="LinkButton2" runat="server">Group</asp:LinkButton><img src="https://bulksms.2way.co.za/c/menu-arrow.gif" /><asp:Label ID="Label4" 
            runat="server" Font-Bold="False" style="text-align: left" Width="179px"></asp:Label></p>
    <p style="width: 1024px; " class="style1">
        <table style="width: 908px; margin-left: 116px;">
            <tr>
                <td class="style11">
                    Mobile                Mobile</td>
                <td class="style13">
                    <asp:TextBox ID="txtPWD" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="style20">
                    Name
                </td>
                <td class="style22">
                    <asp:TextBox ID="txtAdminFullName" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    Note</td>
                <td class="style14">
                    <asp:TextBox ID="txtNotes" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="style18">
                    <asp:Label ID="Label2" runat="server" Text="Group"></asp:Label>
                </td>
                <td class="style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="GroupName" 
                        DataValueField="GroupID" Width="255px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td class="style14" colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnNew" runat="server" Font-Size="9pt" Text="New" 
                        style="font-weight: 700" />
                    <asp:Button ID="btnSave" runat="server" Font-Size="9pt" 
                        Text="Add" style="font-weight: 700" />
                    <asp:Button ID="Button2" runat="server" Font-Bold="False" Font-Size="9pt" 
                        Text="Update" Width="62px" style="font-weight: 700" />
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="176px">
                        <asp:ListItem Selected="True" Value="0">From TXT File</asp:ListItem>
                        <asp:ListItem Value="1">From Excel</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style21" colspan="3">
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Height="53px" 
                        TextMode="MultiLine" Width="601px">Text File format Start line with Mobile Number , Name ex(249912345678,Jalal Ali) Excel File Also first filed: Mobile Number ,Second filed: Name</asp:TextBox>
                    <br />
                    <a href="download.aspx?file=Template.xls">Download Template</a>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    From Text File</td>
                <td colspan="2" class="style15">
                    <asp:FileUpload ID="File1" runat="server" Width="243px" />
                    <asp:Button ID="Button5" runat="server" Text="Upload" />
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                </td>
                <td class="style7" colspan="3">
                    <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label18" runat="server"></asp:Label>
                    <asp:Label ID="lblStatus" runat="server"></asp:Label>
                    <asp:Label ID="lbcount" runat="server" style="background-color: #33CC33"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style23">
                    <asp:Button ID="Button6" runat="server" Font-Bold="False" Font-Size="9pt" 
                        Text="Delete All" />
                </td>
                <td colspan="2" class="style23">
&nbsp;<asp:Label ID="Label21" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td style="width: 96px; background-color: #CCCCFF;">
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" 
                        AutoGenerateEditButton="True" EnableModelValidation="True" 
                        Style="width: 100%; text-align: center;" Width="808px">
                    </asp:GridView>
                    <br />
                    <asp:Button ID="btnPrint" runat="server" OnClientClick="printGrid()" 
                        Text="Print" Visible="False" />
                    <asp:Button ID="btnExport" runat="server" Text="Export" 
            Visible="False" Height="26px" style="height: 26px" />
                </td>
            </tr>
        </table>
        &nbsp;</p>
    <p style="text-align: center; width: 1024px;">
        &nbsp;</p>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="Data Source=LCTDB;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=LCT321@@;Connect Timeout=300;Max Pool Size=32000" 
        SelectCommand="SELECT [GroupID], [GroupName] FROM [Groups] WHERE ([UserID] = @UserID)">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
     <footer>
    <div>
        <hr width="100%" style="width: 100%" />
        <p style="text-align: center; width: 1024px; height: 18px;">
           Copyright © 2016 - 2017 LCT All Rights Reserved         
    served.         
    </div>
    <footer/>
</form>

</body>
</html>
