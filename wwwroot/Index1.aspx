<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Index1.aspx.vb" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Bulk SMS Login</title>
    <style type="text/css">
        .Copyright
        {
            text-align: left;
        }
        #form1
        {
            height: 372px;
            width: 1028px;
        }
        .style1
        {
            text-align: left;
        }
        .style2
        {
            width: 100%;
        }
        .style4
        {
            width: 478px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; width: 1024px; height: 160px;">
        &nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="150px" 
            Width="100%" ImageUrl="~/logo.jpg" />
    </div>
    <p class="style1" 
        
        style="width: 1024px; height: 24px; background-image: url('DATA%20SOFT/btn%20bg.jpg');">
        <b>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Common Bulk SMS System 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
    </p>
    <table class="style2" style="width: 1024px">
            <tr>
                <td style="left: 116px; text-align: center;">
                    <table class="style2">
                        <tr>
                            <td class="style4" rowspan="4">
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/x.JPG" />
                            </td>
                            <td>
                    <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
                        BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" CssClass="Copyright" 
                        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="110px" 
                        Width="250px">
                        <TextBoxStyle Font-Size="0.8em" Width="100px" />
                        <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                        <LayoutTemplate>
                            <table border="0" cellpadding="4" cellspacing="0" 
                                style="border-collapse:collapse;">
                                <tr>
                                    <td>
                                        <table border="0" cellpadding="0" style="height:110px;width:250px;">
                                            <tr>
                                                <td align="center" 
                                                    
                                                    style="color:White;background-color:#5D7B9D;font-size:0.9em;font-weight:bold;">
                                                    Log In</td>
                                                <td align="center" 
                                                    style="color:White;background-color:#5D7B9D;font-size:0.9em;font-weight:bold;">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User 
                                                    Name:</asp:Label>
                                                </td>
                                                <td rowspan="2">
                                                    <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em" Width="100px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                        ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                        ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password" 
                                                        Width="100px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                        ControlToValidate="Password" ErrorMessage="Password is required." 
                                                        ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2" style="color:Red;">
                                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" colspan="2">
                                                    <asp:Button ID="LoginButton" runat="server" BackColor="#FFFBFF" 
                                                        BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" 
                                                        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Log In" 
                                                        ValidationGroup="Login1" onclick="LoginButton_Click2" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                            ForeColor="#FFFFFF" />
                    </asp:Login>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/z.JPG" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        </table>
                </td>
            </tr>
        </table>
    <br />
        <hr width="100%" style="width: 100%" />
        <p style="text-align: center; width: 1024px; height: 18px;">
           Copyright © 2016 - 2017 LCT All Rights Reserved         
    </form>

</body>
</html>
