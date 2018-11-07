<%@ page language="VB" autoeventwireup="false" inherits="Trans, App_Web_g5y5yepo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title> Credits Tarnsactions </title>
    <style type="text/css">

        .style1
        {
            text-align: left;
            font-weight: 700;
            font-size: large;
            background-color: #CCCCCC;
        }
        .style5
        {
            width: 135px;
        }
        .style6
        {
            height: 16px;
            background-color: #CCCCFF;
        }
        .style7
        {
            height: 22px;
            width: 110px;
            background-color: #CCCCFF;
        }
        .style8
        {
            text-align: right;
            background-color: #CCCCFF;
        }
        .style9
        {
            width: 191px;
            height: 16px;
            font-weight: bold;
            background-color: #CCCCFF;
        }
        .style10
        {
            width: 882px;
        }
        .style4
        {
            font-size: large;
            font-weight: bold;
            font-style: italic;
            text-decoration: underline;
        }
        .style12
        {
            text-align: left;
            font-weight: 700;
            font-size: x-large;
            background-color: #FFFFFF;
        }
        .style13
        {
            height: 22px;
            width: 191px;
            font-weight: bold;
            background-color: #CCCCFF;
        }
        .style14
        {
            width: 191px;
            font-weight: bold;
            background-color: #CCCCFF;
        }
        .style15
        {
            font-weight: bold;
        }
        .style16
        {
            background-color: #CCCCFF;
        }
        .style17
        {
            font-weight: bold;
            background-color: #CCCCFF;
        }
        .style18
        {
            width: 177px;
            font-weight: 700;
        }
        .style19
        {
            width: 177px;
            font-weight: 700;
            background-color: #CCCCFF;
        }
    </style>
</head>
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
<body>
    <form id="form2" runat="server">
    <div style="text-align: center; width: 1024px; height: 160px;">
        <asp:Image ID="Image1" runat="server" Height="160px" 
            ImageUrl="~/logo.jpg" Width="1024px" />
        &nbsp;&nbsp;</div>
    <p class="style1" 
        
        
        style="width: 1024px; height: 39px; background-image: none; background-color: #FFFFFF; text-align: center;">
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
  
        <table id="tblMain" border="0" cellpadding="1" cellspacing="1" 
             style="font-size: 1em; ">
            <tr>
                <td class="style5" valign="top">
                    <asp:Panel ID="Panel1" runat="server" Height="104px" Width="136px">
                    </asp:Panel>
                    <br />
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    <br />
                </td>
                <td valign="top" class="style10">
                    <table id="tblMain0" border="0" cellpadding="1" cellspacing="1" 
                         style="font-size: 1em">
                        <tr>
                            <td style="width: 919px; height: 50px">
                                <table style="width: 100%; color: black; font-style: italic; background-color: gray;
                                                text-align: center">
                                </table>
                                <span class="style12">Agent Payments..</span><span class="style1"><br />
                                <br />
                                </span>
                                <table style="width: 592px" align="center">
                                    <tr>
                                        <td class="style9">
                                            <strong>User Name
                                        </strong>
                                        </td>
                                        <td class="style6" colspan="4">
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                                DataSourceID="SqlDataSource3" DataTextField="UserName" DataValueField="UserID" 
                                                Width="300px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style13">
                                            Points Before</td>
                                        <td class="style7">
                                            <asp:TextBox ID="txtbefore" runat="server" Enabled="False" Width="187px"></asp:TextBox>
                                        </td>
                                        <td style="width: 140px; height: 22px" class="style17">
                                            Package</td>
                                        <td style="width: 68px; height: 22px" class="style16">
                                            <asp:DropDownList ID="dlCredits" runat="server" AutoPostBack="True" 
                                                Width="145px" DataSourceID="SqlDataSource1" DataTextField="Package" 
                                                DataValueField="Price" Height="16px">
                                                <asp:ListItem Selected="True" Value="0">Select Points</asp:ListItem>
                                                <asp:ListItem Value="25000">25,000</asp:ListItem>
                                                <asp:ListItem Value="50000">50,000</asp:ListItem>
                                                <asp:ListItem Value="100000">100,000</asp:ListItem>
                                                <asp:ListItem Value="250000">250,000</asp:ListItem>
                                                <asp:ListItem Value="500000">500,000</asp:ListItem>
                                                <asp:ListItem Value="1000000">1,000,000</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 68px; height: 22px" class="style16">
                                            <asp:Button ID="Button20" runat="server" Text="Edit" Width="45px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            Price</td>
                                        <td class="style8">
                                            <asp:TextBox ID="txtPrice" runat="server" Width="185px" Enabled="False"></asp:TextBox>
                                        </td>
                                        <td style="width: 140px" class="style17">
                                            Points After</td>
                                        <td style="width: 68px" colspan="2" class="style16">
                                            <asp:TextBox ID="txtAfter" runat="server" Enabled="False" Width="181px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            &nbsp;</td>
                                        <td class="style8" colspan="4">
                                            <asp:Label ID="lbCash" runat="server" style="font-weight: 700; color: #009933"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            Notes</td>
                                        <td colspan="4" class="style16">
                                            <asp:TextBox ID="Txtnotes" runat="server" Width="98%"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;" colspan="5" class="style16">
                                            <asp:Button ID="btnNew" runat="server" Font-Size="9pt" Text="New" 
                                                Width="50px" CssClass="style15" />
                                            <asp:Button ID="btnSave" runat="server" Font-Size="9pt" 
                                                Text="Save" Width="50px" CssClass="style15" />
                                            <asp:Button ID="Button2" runat="server" Font-Bold="False" Font-Size="9pt" 
                                                Text="Update" Width="50px" CssClass="style15" />
                                        </td>
                                    </tr>
                                </table>
                                ..</td>
                        </tr>
                        <tr>
                            <td style="width: 919px; height: 50px">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateEditButton="True" 
                                    PageSize="30" Style="width: 100%">
                                </asp:GridView>
                                <br />
                    <asp:Button ID="btnPrint" runat="server" OnClientClick="printGrid()" 
                        Text="Print" Visible="False" />
                    <asp:Button ID="btnExport" runat="server" Text="Export" 
            Visible="False" Height="26px" style="height: 26px" Width="56px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
  
    <asp:Panel ID="Panel2" runat="server" Height="341px" Visible="False">
        <table style="width: 908px; margin-left: 116px;">
            <tr>
                <td class="style18">
                    <span class="style4">
                    Packages Setting</span></td>
                <td style="width: 148px">
                    &nbsp;</td>
                <td style="width: 79px">
                    &nbsp;</td>
                <td style="width: 96px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19">
                    No Of&nbsp; SMS (Package)</td>
                <td colspan="2" class="style16">
                    <asp:TextBox ID="txtAdminFullName" runat="server" Width="302px"></asp:TextBox>
                </td>
                <td style="width: 96px" class="style16">
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="ComName" DataValueField="ComID" 
                        Visible="False">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style19">
                    Price</td>
                <td colspan="3" class="style16">
                    <asp:TextBox ID="txtPWD" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4" height="30" class="style16" style="text-align: center">
                    <asp:Button ID="btnNew0" runat="server" Font-Size="9pt" Height="30px" Text="New" 
                        Width="60px" style="font-weight: 700" />
                    <asp:Button ID="btnSave0" runat="server" Font-Size="9pt" Height="30px" 
                        Text="Add" Width="60px" style="font-weight: 700" />
                    <asp:Button ID="Button19" runat="server" Font-Bold="False" Font-Size="9pt" 
                        Height="30px" Text="Update" Width="60px" style="font-weight: 700" />
                </td>
            </tr>
            <tr>
                <td colspan="4" height="30">
                    <asp:GridView ID="GridView2" runat="server" 
                        AutoGenerateColumns="False" AutoGenerateDeleteButton="True" 
                        AutoGenerateEditButton="True" DataSourceID="SqlDataSource1" 
                        Style="width: 100%; text-align: center;" DataKeyNames="Package">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" 
                                SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="Package" HeaderText="Package" ReadOnly="True" 
                                SortExpression="Package" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p>
    </p>
    <p style="text-align: left; width: 1024px;">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="Data Source=LCTDB;Initial Catalog=LCTBulkSMS;Persist Security Info=True;User ID=sa;password=LCT321@@;Connect Timeout=300;Max Pool Size=32000" 
            SelectCommand="SELECT [ComID], [ComName] FROM [Coms]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:BulkSMSConnectionString %>" 
            
            SelectCommand="SELECT ID,Points as Package,Price from Packages Order by Points ">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:BulkSMSConnectionString %>" 
            SelectCommand="SELECT [UserID], [UserName]+'  &gt;&gt;' +UserFullName   [UserName] FROM [Users] WHERE ([AdminID] = @AdminID)">
            <SelectParameters>
                <asp:SessionParameter Name="AdminID" SessionField="AdminID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p style="text-align: left; width: 1024px;">
        &nbsp;</p>
       
        <br />
       
        <br />
    <br />
    <br />
    <br />
    <p style="text-align: center; width: 1024px;">
       Copyright © 2016 - 2017 LCT All Rights Reserved     </form>
   
    </form>
</body>
</html>
