<%@ page language="VB" autoeventwireup="false" inherits="TEST, App_Web_4p0lrxd2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>

<script type="text/javascript">
        function Count(x) {
if  (document.getElementById("TextBox1").value.length <=7)
 document.getElementById("Label1").innerHTML =1
else

    document.getElementById("Label1").innerHTML =  Math.ceil((document.getElementById("TextBox1").value.length)/7)      
        }
</script>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TextBox ID="TextBox1" runat="server" Height="89px" TextMode="MultiLine" Width="200px"   onkeyup="Count(this.id)" ></asp:TextBox>

<asp:Label ID="Label1" runat="server" Width="266px"></asp:Label> 
    </div>
    </form>
</body>
</html>
