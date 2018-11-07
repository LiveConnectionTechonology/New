<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SendSMS.aspx.vb" Inherits="SendSMS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Send SMS</title>
    <style type="text/css">

        #form1
        {
            height: 222px;
            width: 1028px;
        }
        .style1
        {
            text-align: left;
        }
        .style5
        {
            font-style: italic;
            font-size: large;
            font-weight: bold;
        }
        .style13
        {            text-align: left;
        }
        .style16
        {
            height: 26px;
            width: 42px;
            background-color: #CCCCFF;
        }
        .style18
        {
            width: 9px;
            background-color: #CCCCFF;
        }
        .style21
        {
            text-align: left;
            height: 26px;
            background-color: #CCCCFF;
        }
        .scrollup
        {
            text-align: left;
        }
        .style22
        {
            text-align: left;
            background-color: #CCCCFF;
        }
        .style23
        {
            text-align: right;
            width: 170px;
            background-color: #CCCCFF;
        }
        .style24
        {
            text-align: center;
            height: 26px;
            background-color: #CCCCFF;
        }
        .style25
        {
            text-align: center;
            background-color: #CCCCFF;
        }
        .style26
        {
            text-align: left;
            height: 26px;
            width: 167px;
            background-color: #CCCCFF;
        }
        .style27
        {
            background-color: #FFFFFF;
        }
        .style28
        {
            background-color: #FFFFFF;
        }
        .style29
        {
            background-color: #CCCCFF;
        }
        .style30
        {
            width: 42px;
            background-color: #CCCCFF;
        }
        .style31
        {
            text-align: left;
            width: 42px;
            background-color: #CCCCFF;
        }
        </style>
</head>


<script type="text/javascript">
    function isDoubleByte(str) {
        for (var i = 0, n = str.length; i < n; i++) {
            if (str.charCodeAt(i) > 255) { return true; }
        }
        return false;
    }

    function Count(x) {
        var dd = 160;
        if (isDoubleByte(document.getElementById("txtPWD").value)) { dd = 70; }
        var mgsLength = 0;
        if (document.getElementById("txtPWD").value.length <= dd)
            mgsLength = 1
        else

            mgsLength = Math.ceil((document.getElementById("txtPWD").value.length) / dd)
        document.getElementById("Label4").innerHTML = "Total characters " + document.getElementById("txtPWD").value.length + ";      No of SMS: " + mgsLength;
    }
</script>


<body>
    <form id="form1" runat="server">
    <div style="text-align: right; width: 1024px; height: 160px;">
        <asp:Image ID="Image1" runat="server" Height="160px" 
            ImageUrl="~/logo.jpg" Width="1024px" />
        &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" 
            style="font-style: italic; text-align: right"></asp:Label></div>
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
        <asp:Label ID="Label12" runat="server" Width="88px"></asp:Label>
        <span class="style5" style="width: 1020px; font-size: x-large;">Send Messages ..</span></p>
    <p style="text-align: left">
        <asp:Label ID="Label21" runat="server" Width="88px"></asp:Label>
        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
            Width="242px">
            <asp:ListItem Value="0" Selected="True">Send Messages to a Group</asp:ListItem>
            <asp:ListItem Value="1">Send Messages to Individuals</asp:ListItem>
        </asp:DropDownList>
    </p>
    <asp:Panel ID="Panel1" runat="server">
        <table style="width: 912px; margin-left: 116px;">
            <tr>
                <td class="style29">
                    <asp:Label ID="Label6" runat="server" Text="Sender" Width="100px" 
                        CssClass="style27" style="font-weight: 700; background-color: #CCCCFF"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="Sender" DataValueField="Sender" 
                        Width="197px" CssClass="style27">
                    </asp:DropDownList>
                    <asp:TextBox ID="txtSender" runat="server" CssClass="style27" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style29">
                    <asp:Label ID="lbttt" runat="server" Text="Select Group" Width="100px" 
                        style="font-weight: 700"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="GroupName" 
                        DataValueField="GroupID" Width="195px">
                    </asp:DropDownList>
                    <asp:TextBox ID="txtRecipient" runat="server" Width="262px" 
                        style="margin-bottom: 0px"></asp:TextBox>
                    <asp:LinkButton ID="LinkButton3" runat="server">from phonebook</asp:LinkButton>
                    <asp:CheckBox ID="CheckBox6" runat="server" AutoPostBack="True" 
                        style="background-color: #FF0000" Text="Send To All" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="btnGroups" runat="server">Groups</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style29">
                    <asp:Label ID="lbhint" runat="server" style="color: #000000" 
                        Text="e.g. 249911111111 (249 is a country code) Sepertaed by ; for Multi Numbers" 
                        Width="100%"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style29">
                    <asp:Label ID="Label7" runat="server" Text="Message" Width="100px" 
                        style="font-weight: 700"></asp:Label>
                    <asp:TextBox ID="txtPWD" runat="server" Height="89px" onkeyup="Count(this.id)" 
                        TextMode="MultiLine" Width="390px">
                        </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 9px;" class="style27">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" 
                        Width="88%" CssClass="style28"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 9px;" class="style27">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" 
                        CssClass="style28"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;<asp:Button ID="btnNew" runat="server" Font-Size="9pt" Height="30px" 
                        Text="New" Width="60px" style="font-weight: 700" />
                    <asp:Button ID="btnSave" runat="server" Font-Size="9pt" Height="30px" 
                        Text="Send" Width="60px" style="font-weight: 700" />
                </td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="False" Width="100%">
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Height="249px" Visible="False">
        <table style="width: 911px; margin-left: 116px;">
            <tr>
                <td class="style30">
                    <strong>Name</strong>
                </td>
                <td class="style23">
                    <asp:TextBox ID="txtAdminFullName" runat="server" Width="160px"></asp:TextBox>
                    &nbsp;&nbsp;
                </td>
                <td class="style25" colspan="4">
                    <strong>Mobile&nbsp;No &nbsp;&nbsp;</strong></td>
                <td class="style22">
                    <asp:TextBox ID="txtPWD0" runat="server" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    <asp:Label ID="Label19" runat="server" Text="Group" style="font-weight: 700"></asp:Label>
                </td>
                <td class="style26" colspan="2">
                    <asp:DropDownList ID="DropDownList3" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="GroupName" 
                        DataValueField="GroupID" Enabled="False" Width="160px">
                    </asp:DropDownList>
                </td>
                <td class="style24" colspan="2">
                    <strong>Operator</strong>
                </td>
                <td class="style21" colspan="2">
                    <asp:DropDownList ID="dlComs" runat="server" Width="160px">
                        <asp:ListItem Selected="True" Value="0">ALL</asp:ListItem>
                        <asp:ListItem Value="3">ZAIN</asp:ListItem>
                        <asp:ListItem Value="2">MTN</asp:ListItem>
                        <asp:ListItem Value="1">Sudani</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style31">
                    <asp:CheckBox ID="CheckBox5" runat="server" AutoPostBack="True" 
                        Font-Bold="False" Font-Italic="False" 
                        style="text-align: left; font-style: italic; font-weight: 700;" 
                        Text="Select All" Visible="False" 
                        Width="139px" />
                </td>
                <td class="style22" colspan="3">
                    <asp:Button ID="btnNew0" runat="server" Font-Size="9pt" 
                        style="font-weight: 700" Text="Search" Width="60px" />
                    <asp:Button ID="Button6" runat="server" Font-Bold="False" Font-Size="9pt" 
                        style="text-align: center; font-weight: 700;" Text="Continue composing SMS" 
                        Width="173px" />
                </td>
                <td class="style22" colspan="3">
                    <asp:Label ID="lbRowCount" runat="server" style="background-color: #66FF66"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="7" class="style13">
                    <asp:GridView ID="GridView2" runat="server" style="text-align: center" 
                        Width="100%">
                        <Columns>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p style="text-align: left; width: 1024px;">
            &nbsp;&nbsp;</p>
    <p style="text-align: left; width: 1024px;">
            &nbsp;</p>
        <hr width="100%" style="width: 100%" />
        <p style="text-align: center; width: 1024px; height: 18px;">
           Copyright © 2016 - 2017 LCT All Rights Reserved         
        served.         
        .         
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000" 
            SelectCommand="SELECT [Sender] FROM [Senders] WHERE ([UserID] = @UserID)">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000" 
            SelectCommand="SELECT [GroupID], [GroupName] FROM [Groups] WHERE ([UserID] = @UserID)">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
   <footer/>
</form>

</body>
</html>
