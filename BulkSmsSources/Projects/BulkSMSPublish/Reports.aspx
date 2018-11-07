<%@ page language="VB" autoeventwireup="false" inherits="Reports, App_Web_sge0iyyt" %>

<%@ Register Assembly="Mark.Web.UI.WebControls.DateTimePicker" Namespace="Mark.Web.UI.WebControls"
    TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title> Reporters</title>
    <style type="text/css">

    
        .style1
        {
            text-align: left;
            background-color: #FFFFFF;
            height: 358px;
        }
        .style2
        {
            height: 274px;
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
    function printGrid1() {
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
    function printGrid2() {
        var gridData = document.getElementById('<%= GridView4.ClientID %>');
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
    <form  runat="server" id="form1">
    <div style="text-align: right; width: 1024px; height: 160px;">
        <asp:Image ID="Image1" runat="server" Height="160px" 
            ImageUrl="~/logo.jpg" Width="1024px" />
        &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Italic="True"></asp:Label></div>
    <p class="style1" 
        style="width: 1024px; height: 39px; background-image: none;">
        &nbsp;&nbsp;<asp:Button ID="Button11" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Mainmenu.aspx" 
            Text="Home" Width="90px" />
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
            Text="My Account" Width="101px" />
        <asp:Button ID="Button17" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Logout.aspx" 
            Text="Logout" Width="90px" />
        &nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server">Inbox Report</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server">Outbox Report</asp:LinkButton>
&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server">Payment Report</asp:LinkButton>
&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server">Users Reports</asp:LinkButton>
    </p>
    <p>
        <asp:Label ID="Label21" runat="server" style="text-align: center"></asp:Label>
    </p>
    <asp:Panel ID="Panel2" runat="server" Width="100%">
        <table style="width: 910px; margin-left: 116px;">
            <tr>
                <td class="style2">
                    <asp:Panel ID="Panel5" runat="server" 
                        style="text-align: right; background-color: #FFFFFF; margin-left: 0px;" 
                        Width="900px" Height="307px">
                        <div class="style1">
                            <div style="height: 21px">
                                <span style="font-size: 1em; background-color: #FFFFFF;">
                                <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" 
                                    Text="Search By  Date" />
                                <br />
                                </span>
                            </div>
                            <asp:Panel ID="Panel6" runat="server" Visible="False">
                                <span style="font-size: 1em">
                                <p>
                                    From Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <cc1:DateTimePicker ID="DateTimePicker1" runat="server" Format="yyyy/MM/dd" 
                                        UseImageButtons="True"></cc1:DateTimePicker>
                                    To Date&nbsp;&nbsp;&nbsp;&nbsp;
                                    <cc1:DateTimePicker ID="DateTimePicker2" runat="server" Format="yyyy/MM/dd" 
                                        UseImageButtons="True"></cc1:DateTimePicker>
                                </p>
                                </span>
                            </asp:Panel>
                            <asp:Label ID="Label20" runat="server" Text="Mobile Number"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" Width="190px"></asp:TextBox>&nbsp;
                            <asp:Label ID="Label25" runat="server" Text="Message"></asp:Label>
                            <asp:TextBox ID="TextBox4" runat="server" Width="190px"></asp:TextBox>
                            &nbsp;<asp:Label ID="Label26" runat="server" Text="Operator"></asp:Label><asp:DropDownList 
                                ID="dlComs" runat="server">
                                <asp:ListItem Selected="True" Value="0">ALL</asp:ListItem>
                                <asp:ListItem Value="3">ZAIN</asp:ListItem>
                                <asp:ListItem Value="2">MTN</asp:ListItem>
                                <asp:ListItem Value="1">Sudani</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            &nbsp;<asp:Label ID="Label22" runat="server" Text="Select Top " Width="97px"></asp:Label><asp:DropDownList 
                                ID="dlTop" runat="server">
                                <asp:ListItem Selected="True" Value="0">ALL</asp:ListItem>
                                <asp:ListItem Value="5">TOP 5</asp:ListItem>
                                <asp:ListItem Value="10">TOP 10</asp:ListItem>
                                <asp:ListItem Value="20">TOP 20</asp:ListItem>
                                <asp:ListItem Value="50">TOP 50</asp:ListItem>
                                <asp:ListItem Value="100">TOP 100</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Users&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList 
                                ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource3" DataTextField="UserName" DataValueField="UserID" 
                                Width="254px" Height="16px">
                            </asp:DropDownList>
                            &nbsp;<asp:CheckBox ID="CheckBox3" runat="server" Checked="True" Text="All" />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;
                            <asp:Button 
                                ID="Button7" runat="server" Text="Search" style="text-align: right" />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
            
                <td style="text-align: left">
               
                    <asp:GridView ID="GridView3" runat="server" style="text-align: center" 
                        Width="100%">
                    </asp:GridView>
                   
                    <asp:Label ID="lbhis" runat="server" style="font-weight: 700"></asp:Label>
                    <br />
                    <asp:Button ID="btnprint" runat="server" OnClientClick="printGrid()" 
                        Text="Print" Visible="False" />
                    <asp:Button ID="btnExport" runat="server" Text="Export" Visible="False" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    &nbsp;<asp:Panel ID="Panel7" runat="server" Width="100%">
        <table style="width: 910px; margin-left: 116px;">
            <tr>
                <td class="style25">
                    <span style="font-size: 1em">
                    <asp:CheckBox ID="CheckBox4" runat="server" AutoPostBack="True" 
                        Text="Search By  Date" />
                    <br />
                    <asp:Panel ID="Panel10" runat="server" Visible="False" Width="462px">
                        <span style="font-size: 1em">
                        <p style="width: 587px">
                            From Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <cc1:DateTimePicker ID="DateTimePicker3" runat="server" Format="yyyy/MM/dd" 
                                UseImageButtons="True"></cc1:DateTimePicker>
                            To Date&nbsp;&nbsp;&nbsp;&nbsp;
                            <cc1:DateTimePicker ID="DateTimePicker4" runat="server" Format="yyyy/MM/dd" 
                                UseImageButtons="True"></cc1:DateTimePicker>
                        </p>
                        </span>
                    </asp:Panel>
                    </span>
                    <asp:Panel ID="Panel8" runat="server" 
                        style="text-align: left; background-color: #FFFFFF" Width="583px">
                        <asp:Label ID="Label23" runat="server" Text="Mobile Number"></asp:Label>
                        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="190px"></asp:TextBox>Message
                        <asp:TextBox ID="TextBox5" runat="server" Width="190px"></asp:TextBox>
                        <br />
                        Users&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            DataSourceID="SqlDataSource3" DataTextField="UserName" DataValueField="UserID" 
                            Width="300px">
                        </asp:DropDownList>
                        <asp:CheckBox ID="CheckBox5" runat="server" Checked="True" Text="All" />
                        &nbsp;&nbsp;&nbsp; Opertaor
                        <asp:DropDownList ID="dlComs0" runat="server">
                            <asp:ListItem Selected="True" Value="0">ALL</asp:ListItem>
                            <asp:ListItem Value="3">ZAIN</asp:ListItem>
                            <asp:ListItem Value="2">MTN</asp:ListItem>
                            <asp:ListItem Value="1">Sudani</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                            RepeatDirection="Horizontal" Width="462px">
                            <asp:ListItem Selected="True" Value="5">ALL</asp:ListItem>
                            <asp:ListItem Value="0">Pending</asp:ListItem>
                            <asp:ListItem Value="2">Rejcted</asp:ListItem>
                            <asp:ListItem Value="1">Sent</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        <asp:Button ID="Button19" runat="server" Text="Search Details" />
                        <asp:Button ID="Button20" runat="server" Text="Search Batchs" />
                    </asp:Panel>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: left">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
                        Style="width: 100%; text-align: center;">
                    </asp:GridView>
                    <asp:Panel ID="Panel9" runat="server">
                        <table class="style22">
                            <tr>
                                <td class="style23">
                                    <asp:Label ID="Label24" runat="server"></asp:Label>
                                </td>
                                <td class="style24">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style23">
                                    <asp:Button ID="BtnPrint0" runat="server" OnClientClick="printGrid1()" 
                                        Text="Print" Visible="False" />
                                    <asp:Button ID="btnExport0" runat="server" Text="Export" Visible="False" />
                                </td>
                                <td class="style24">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style23">
                                    <asp:Label ID="lbhis0" runat="server" style="font-weight: 700"></asp:Label>
                                </td>
                                <td class="style24">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                    </asp:Panel>
                    <asp:GridView ID="GridView4" runat="server" style="text-align: center" 
                        Width="100%">
                    </asp:GridView>
                    <br />
                    <asp:Button ID="btnprint1" runat="server" OnClientClick="printGrid2()" 
                        Text="Print" Visible="False" />
                    <asp:Button ID="btnExport1" runat="server" Text="Export" Visible="False" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p style="text-align: left; width: 1024px;">
        &nbsp;</p>
    <p style="text-align: left; width: 1024px;">
        &nbsp;</p>
    <p style="text-align: left; width: 1024px;">
        &nbsp;</p>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:BulkSMSConnectionString %>" 
            
        SelectCommand="SELECT [UserID], [UserName]+'  &gt;&gt;' +UserFullName   [UserName] FROM [Users] WHERE ([AdminID] =@AdminID)">
            <SelectParameters>
                <asp:SessionParameter Name="AdminID" SessionField="AdminID" Type="Int32" 
                    DefaultValue="1" />
            </SelectParameters>
        </asp:SqlDataSource>
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
        <hr style="width: 1290px; text-align: left; height: -12px;" />
     <footer>
    <p style="text-align: center; width: 1024px;">
       Copyright © 2016 - 2017 LCT All Rights Reserved
    er/>
    er/>
    </form>
    </body>
</html>
