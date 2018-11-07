<%@ page language="VB" autoeventwireup="false" inherits="SendMMS, App_Web_erlldjk0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Send MMS</title>
    <style type="text/css">
        .style3
        {
            width: 17%;
        }
        .style4
        {
            width: 86px;
            background-color: #FFFFCC;
        }
        .style5
        {
            font-size: large;
            font-style: italic;
            font-weight: bold;
        }
        .style6
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div>
                    <div>
                        <div style="text-align: left">
                            <table id="tblMain" border="0" cellpadding="1" cellspacing="1" 
                                style="font-size: 1em" width="100%">
                                <tr>
                                    <td colspan="2">
                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/logo.jpg" Style="width: 100%" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <p style="text-align: left">
                                            <asp:Label
                                                ID="Label1" runat="server"></asp:Label>&nbsp;</p>
                                    </td>
                                </tr>
                                <tr style="color: #000000; text-decoration: underline">
                                    <td valign="top" class="style6">
                                        <table class="style3">
                                            <tr>
                                                <td class="style4">
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="False"
                                                ForeColor="White" NavigateUrl="~/MainAgent.aspx" style="color: #003366">Home</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4">
                                            <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Italic="False"
                                                ForeColor="White" PostBackUrl="~/SendSMS.aspx" Width="87px" style="color: #003366">Send SMS</asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4">
                                            <asp:LinkButton ID="LinkButton12" runat="server" Font-Bold="True" Font-Italic="False"
                                                ForeColor="White" PostBackUrl="~/Groups.aspx" style="color: #003366">Lists</asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4">
                                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Italic="False"
                                                ForeColor="White" PostBackUrl="~/ChangePwd.aspx" style="color: #003366">Account</asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4">
                                            <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Italic="False"
                                                ForeColor="White" PostBackUrl="~/index.aspx" style="color: #003366">logout</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="width: 919px" valign="top">
                                        <span class="style5">Send Messages ..<br />
                                        </span>
                                        <br />
                                        <asp:LinkButton ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="Red"
                                            PostBackUrl="~/Groups.aspx">Create List To Send SMS</asp:LinkButton>
                                        <br />
                                        &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>&nbsp;<br />
                                        <table style="width: 488px">
                                            <tr>
                                                <td style="width: 81px">
                                                    List&nbsp;</td>
                                                <td colspan="3">
                                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
                                                        DataTextField="GroupName" DataValueField="GroupID" Width="159px">
                                                    </asp:DropDownList>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 81px">
                                                    Sender</td>
                                                <td style="width: 148px">
                                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                                                        DataTextField="Sender" DataValueField="Sender" Width="159px">
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="width: 130px">
                                                    Free Sender</td>
                                                <td style="width: 215px">
                                                    <asp:TextBox ID="txtSender" runat="server"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 81px">
                                                    Body</td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="txtPWD" runat="server" Height="89px" TextMode="MultiLine" Width="519px"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td style="height: 9px" colspan="4">
                                                    <asp:Label ID="Label6" runat="server" Text="MMS File Path" Width="104px"></asp:Label><input
                                                        id="File1" runat="server" type="file" /><asp:Button ID="Button5" runat="server" Text="Upload" /><asp:Label
                                                            ID="lblMessage" runat="server"></asp:Label><asp:Label ID="Label4" runat="server"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="4" style="height: 9px">
                                                    <asp:Label ID="lblStatus" runat="server"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 81px">
                                                </td>
                                                <td style="width: 148px">
                                                    &nbsp;<asp:Button ID="btnNew" runat="server" Font-Size="9pt" Height="26px" Text="New"
                                                        Width="56px" />
                                                    <asp:Button ID="btnSave" runat="server" Font-Size="9pt" Height="26px" Text="Send"
                                                        Width="71px" /></td>
                                                <td style="width: 130px">
                                                    </td>
                                                <td style="width: 215px">
                                                    <asp:Button ID="Button1" runat="server" Font-Bold="False" Font-Size="9pt" Height="28px"
                                                        Text="List Numbers" Visible="False" Width="90px" /></td>
                                            </tr>
                                        </table>
                                        &nbsp;
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" Width="462px">
                                            <asp:ListItem Value="5">ALL</asp:ListItem>
                                            <asp:ListItem Selected="True" Value="0">Pending</asp:ListItem>
                                            <asp:ListItem Value="2">Rejcted</asp:ListItem>
                                            <asp:ListItem Value="1">Sent</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <asp:GridView ID="GridView1" runat="server" 
                                            Style="width: 100%">
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                            ConnectionString="Data Source=LCTDB;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=LCT321@@;Connect Timeout=300;Max Pool Size=32000"
                                            SelectCommand="SELECT [GroupID], [GroupName] FROM [Groups] WHERE ([UserID] = @UserID)">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LCTDB;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=LCT321@@;Connect Timeout=300;Max Pool Size=32000"
                                            SelectCommand="SELECT [Sender] FROM [Senders] WHERE ([UserID] = @UserID)">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6" colspan="2">
                                        <hr />
                                        <div class="Copyright">
                                            Copyright
                                            <asp:Label ID="lblYears" runat="server">© 2011 - 2012
              </asp:Label>
                                            &nbsp;...., Inc. All Rights Reserved.
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
