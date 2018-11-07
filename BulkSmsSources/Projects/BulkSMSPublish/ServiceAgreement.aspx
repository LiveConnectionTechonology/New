<%@ page language="VB" autoeventwireup="false" inherits="Index, App_Web_g5y5yepo" %>

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
        .MsoNormal
        {
            width: 851px;
        }
        .style30
        {
            width: 100%;
        }
        
    .style26
    {
        font-weight: normal;
        font-size: 12pt;
    }
        .style32
        {
            width: 376px;
        }
        .style5
        {
            color: #FFFFFF;
        }
        .style33
        {
            font-size: 12pt;
            font-family: "Times New Roman", Times, serif;
        }
        .style1
        {
            text-align: left;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" >
    <div style="text-align: center; width: 100%; height: 160px;">
        &nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="150px" 
            Width="1300px" ImageUrl="~/logo.jpg" />
    </div>
    <p 
        
        style="background-color: #003300; width:1300px">
        <b>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style5">&nbsp; Common Bulk SMS System &nbsp;
        </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></p>
    <p class="style1" 
        style="width: 1252px; height: 34px; background-image: none;">
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
        <asp:Button ID="Button25" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/Registration.aspx" 
            Text="Register" Width="90px" />
    </p>
    <table class="style30" dir="rtl">
        <tr>
            <td class="style32">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="16pt" 
                    ForeColor="#003300" Text="اتفاقية الخدمة"></asp:Label>
                &nbsp;<asp:Image ID="Image4" runat="server" Height="60px" ImageUrl="~/Images/pro-service.png" 
                    Width="89px" />
                <br />
                <br class="style33" />
                <p class="MsoNormal" dir="RTL">
                    <span class="style33" lang="AR-SA" 
                        style="mso-fareast-font-family: &quot;Times New Roman&quot;; color: black">
                    للاشتراك في خدمة &quot;رسائلى الدعائية&quot; لخدمات التسويق الالكتروني الرجاء قراءة 
                    الاتفاقية التالية : </span>
                    <span lang="AR-SA" style="font-size:19.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span>
                </p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style33" lang="AR-SA" 
                        style="mso-fareast-font-family: &quot;Times New Roman&quot;; color: black">
                    هذه الخدمة متاحة للناس كافة والهيئات والمؤسسات بدون تفرقة بشرط الالتزام بقوانين 
                    الموقع .</span><span lang="AR-SA" style="font-size:19.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style33" lang="AR-SA" 
                        style="mso-fareast-font-family: &quot;Times New Roman&quot;; color: black">
                    اللغة المعتمدة للاتفاقية هي اللغة العربية وتعتبر مستندات مكملة وجزءًا منها ولها 
                    من القوة والنفاذ ما لشروط هذا الاتفاقية .&nbsp;<br />
                    <br />
                    • هذه الاتفاقية بجميع بنودها خاضعة للأنظمة المعمول بها دولياً بما لا يخالف 
                    الشريعة الإسلامية والقوانين والآداب العامة ويجري تفسيره وتنفيذه والفصل فيها وفق 
                    هذه الأنظمة، فيما ينشا عنها من دعاوى.&nbsp;</span><span lang="AR-SA" style="font-size:19.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style33" lang="AR-SA" 
                        style="mso-fareast-font-family: &quot;Times New Roman&quot;; color: black">• 
                    يحصل المشترك على رصيد وكلمة سر ويقع على عاتقه الحفاظ على سرية رصيده وكلمة السر , 
                    ويلتزم بإعلامنا فوراً في حال تمكن الآخرين من الوصول إلى رصيده بطريقة غير مشروعة 
                    ويتحمل على عاتقه مسؤولية ذلك .</span><span lang="AR-SA" style="font-size:19.0pt;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span lang="AR-SA" 
                        style="mso-fareast-font-family: &quot;Times New Roman&quot;; color: black">
                    <br class="style33" />
                    </span><span class="style33" lang="AR-SA" 
                        style="mso-fareast-font-family: &quot;Times New Roman&quot;; color: black">• 
                    يحق للشركة الإيقاف الفوري للخدمة عن العميل دون الرجوع إليه ، عندما يقوم بتقديم 
                    أي رسائل أو برامج مخالفه للشرع من الناحية الأدبية والأخلاقية والدينية والسياسية 
                    أو ذات طابع تحريضي أو غير مناسب لعموم المستفيدين .<br />
                    <br />
                    • يلتزم العميل بأن تكون الرسائل محل هذا العقد وفق الضوابط الشرعية ومراعية للآداب 
                    العامة والعادات وكذلك مراعية لأنظمة الدولة والجوانب الأمنية ولا تؤذي مشاعر 
                    المشتركين وأن لا يخصص استخدامها على التنافر العرقي والديني أو تكون محرضة على 
                    استخدام العنف أو القيام بممارسات خطرة ويحق للشركة في خلاف ذلك إيقاف الخدمة وعدم 
                    تعويض العميل عن رصيده المتبقي دون أدنى مسؤولية منها.&nbsp;<br />
                    <br style="mso-special-character:line-break" />
                    <![if !supportLineBreakNewLine]>
                    <br style="mso-special-character:line-break" />
                    <![endif]></span>
                    <span lang="AR-SA" style="font-size:19.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span>
                </p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style33" lang="AR-SA" 
                        style="mso-fareast-font-family: &quot;Times New Roman&quot;; color: black">• 
                    يحق للشركة إلغاء الخدمة في حال صدور نظام عام من الدولة أو من جهة مختصة في الدولة 
                    يمنع العمل محل هذه الاتفاقية أو يؤثر جذريا على تنفيذ العمل محل هذه الاتفاقية.&nbsp;</span><span 
                        lang="AR-SA" style="font-size:19.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span lang="AR-SA" 
                        style="mso-fareast-font-family: &quot;Times New Roman&quot;; color: black">
                    <br class="style33" />
                    </span><span class="style33" lang="AR-SA" 
                        style="mso-fareast-font-family: &quot;Times New Roman&quot;; color: black">• 
                    للشركة الحق استنادًا لأسباب تتعلق بالمصلحة العامة إنهاء هذه الاتفاقية وإيقاف 
                    تشغيل الخدمة وفي هذه الحال تبلغ الشركة عملائها بمدة المهلة.&nbsp;</span><span 
                        lang="AR-SA" style="font-size:19.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>
                <p dir="RTL" style="width: 860px">
                    <span class="style26" lang="AR-SA" 
                        style="mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi"></p>
                <br />
            </td>
        </tr>
        </table>
    <br />
    <br />
        <hr width="1350px" />
        <p style="text-align: center; width: 1024px; height: 18px;">
           Copyright © 2016 - 2017 LCT All Rights Reserved         
             
    ll Rights Reserved.         
             
         
             
    </form>

</body>
</html>
