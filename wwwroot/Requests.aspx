<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Requests.aspx.vb" Inherits="Requests" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Requsts</title>
    <style type="text/css">

        .style1
        {
            text-align: left;
        }
        .style5
        {
            width: 135px;
        }
        .style8
        {
            font-style: italic;
            font-weight: bold;
            text-decoration: underline;
            font-size: large;
        }
        .style9
        {
            width: 881px;
        }
        .style10
        {
            background-color: #CCCCCC;
        }
        .style11
        {
            font-style: italic;
            font-weight: bold;
            font-size: large;
        }
        .style12
        {
            background-color: #CCCCFF;
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
        
        style="width: 1024px; height: 39px; background-image: none; text-align: center;">
        <asp:Button ID="Button11" runat="server" BackColor="#E394AA" Font-Bold="False" 
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
            Text="Reports" Width="90px" PostBackUrl="~/Reports.aspx"  />
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
             style="font-size: 1em; width: 94%;">
            <tr>
                <td class="style5" valign="top">
                    <asp:Panel ID="Panel1" runat="server" Height="104px" Width="136px">
                    </asp:Panel>
                    <br />
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    <br />
                </td>
                <td style="width: 919px" valign="top">
                    <table id="tblMain0" border="0" cellpadding="1" cellspacing="1" 
                         style="font-size: 1em">
                        <tr style="color: #000000 ">
                            <td valign="top" class="style9">
                                <span class="style11"><span class="style10">Requests ..</span></span><span class="style8"><br />
                                </span>
                                <br />
                                <table style="width: 544px" align="center">
                                    <tr>
                                        <td style="width: 81px" class="style12">
                                            <strong>List</strong>&nbsp;</td>
                                        <td colspan="3" class="style12">
                                            <asp:TextBox ID="txtlist" runat="server" Enabled="False" Width="467px"></asp:TextBox>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 81px" class="style12">
                                            <strong>Sender</strong></td>
                                        <td style="width: 148px" class="style12">
                                            <asp:TextBox ID="txtSender" runat="server" Enabled="False"></asp:TextBox>
                                        </td>
                                        <td style="width: 79px" class="style12">
                                            <asp:Label ID="Label1" runat="server" Text="Request Time" Width="100px" 
                                                style="font-weight: 700"></asp:Label>
                                        </td>
                                        <td style="width: 215px" class="style12">
                                            &nbsp;<asp:TextBox ID="txttime" runat="server" Enabled="False" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 81px" class="style12">
                                            <strong>SMS</strong></td>
                                        <td colspan="3" class="style12">
                                            <asp:TextBox ID="txtsms" runat="server" Enabled="False" 
                                                Height="89px" TextMode="MultiLine" Width="467px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 81px" class="style12">
                                            <strong>Note</strong></td>
                                        <td colspan="3" class="style12">
                                            <asp:TextBox ID="txtNotes" runat="server" Width="467px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" class="style12">
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                                                RepeatDirection="Horizontal" Width="462px" style="font-weight: 700">
                                                <asp:ListItem Selected="True" Value="0">Pending</asp:ListItem>
                                                <asp:ListItem Value="2">Rejcted</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 81px" class="style12">
                                            <asp:Button ID="Button4" runat="server" Text="Button" Visible="False" />
                                        </td>
                                        <td style="width: 148px" class="style12">
                                            <asp:Button ID="btnNew" runat="server" Font-Size="9pt" Height="26px" Text="New" 
                                                Width="56px" style="font-weight: 700" />
                                            <asp:Button ID="btnSave" runat="server" Font-Size="9pt" Height="26px" 
                                                Text="Send" Width="71px" style="font-weight: 700" />
                                        </td>
                                        <td style="width: 79px" class="style12">
                                            <asp:Button ID="Button2" runat="server" Font-Bold="False" Font-Size="9pt" 
                                                Height="28px" Text="Reject" Width="65px" style="font-weight: 700" />
                                        </td>
                                        <td style="width: 215px" class="style12">
                                            <asp:Button ID="Button1" runat="server" Font-Bold="False" Font-Size="9pt" 
                                                Height="28px" Text="Correct" Visible="False" Width="90px" 
                                                style="font-weight: 700" />
                                        </td>
                                    </tr>
                                </table>
                                &nbsp;
                                <asp:Button ID="Button3" runat="server" Text="Send All" 
                                    style="font-weight: 700" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000" 
                                    SelectCommand="SELECT [GroupID], [GroupName] FROM [Groups] WHERE ([UserID] = @UserID)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="Data Source=LCTSMS;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=Sms123$;Connect Timeout=300;Max Pool Size=32000" 
                                    SelectCommand="SELECT [Sender] FROM [Senders] WHERE ([UserID] = @UserID)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:CheckBox ID="CheckBox5" runat="server" AutoPostBack="True" 
                                    Font-Bold="True" Text="Select All" Width="139px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </p>
    <asp:GridView ID="GridView1" runat="server" 
                                    style="text-align: center" Width="100%">
                                    <Columns>
                                        <asp:ButtonField Text="Edit" />
                                        <asp:TemplateField>
                                            <EditItemTemplate>
                                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="CheckBox6" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
     <footer>
   
        <hr style="width: 1024px; text-align: left;" />
    <p style="text-align: center; width: 1024px;">
       Copyright © 2016 - 2017 LCT All Rights Reserved     </p>
   
    </form>
</body>
</html>
