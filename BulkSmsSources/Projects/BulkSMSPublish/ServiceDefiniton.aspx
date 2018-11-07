<%@ page language="VB" autoeventwireup="false" inherits="Index, App_Web_erlldjk0" %>

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
            width: 893px;
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
            text-align: right;
            text-indent: -.25in;
            line-height: 115%;
            direction: rtl;
            font-size: 11.0pt;
            font-family: Calibri, sans-serif;
            margin-left: .5in;
            margin-right: 0in;
            margin-top: 0in;
            margin-bottom: .0001pt;
        }
        .style34
        {
            text-align: right;
            text-indent: -.25in;
            line-height: 115%;
            direction: rtl;
            font-size: 11.0pt;
            font-family: Calibri, sans-serif;
            margin-left: .5in;
            margin-right: 0in;
            margin-top: 0in;
            margin-bottom: 10.0pt;
        }
        .style35
        {
            font-size: 14pt;
        }
        .style36
        {
            font-size: 14pt;
            font-weight: bold;
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
            Text="Inbox" />
        <asp:Button ID="Button16" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/ChangePwd.aspx" 
            Text="My Account" />
        <asp:Button ID="Button22" runat="server" BackColor="#E394AA" Font-Bold="False" 
            Font-Italic="True" Font-Overline="False" Font-Size="Medium" 
            Font-Underline="False" ForeColor="White" PostBackUrl="~/ServiceDefiniton.aspx" 
            Text="Definition" Width="86px" />
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
        &nbsp;&nbsp;
    </p>
    <table class="style30" dir="rtl">
        <tr>
            <td class="style32">
                &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="16pt" 
                    ForeColor="#003300" Text="خدمة رسائلى الدعائية"></asp:Label>&nbsp;<asp:Image ID="Image4" runat="server" Height="68px" ImageUrl="~/Images/services_sms.gif" 
                    Width="79px" />
                <br />
                <br />
                <p class="MsoNormal" dir="RTL">
                    <span class="style36" lang="AR-SA" 
                        style="font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi">
                    تعريف الخدمة      تعريف الخدمة<o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi">
                    هي رسائل نصية مكتوبة وترسل بأعداد كبيرة عبر شبكات الهاتف الجوال وتشمل الحملات 
                    الإعلانية و التسويقية، للتواصل معالزبائن ،الاصدقاء والاهل و للمناسبات وغيرها....</span><span 
                        dir="LTR" style="font-size:16.0pt"><o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" dir="LTR" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;"><o:p>
                    &nbsp;</o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi">
                    نقدم من خلال موقعناخدمة ارسال الرسائل الدعائية</span><span class="style35" 
                        dir="LTR">(Bulk SMS)</span><span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi">عن 
                    طريق الانترنت عبر نظام متكامل سهل الإستخدام يمكنك من ارسال مجموعة كبيرة من 
                    الرسائل القصيرة</span><span class="style35" dir="LTR"> (SMS) </span>
                    <span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi">
                    وايصالها مباشرة الى الهواتف النقالة</span><span class="style35" dir="LTR"> 
                    (mobiles) </span><span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi">
                    وبتكلفة قليلة</span><span class="style35" dir="LTR">.</span><span dir="LTR"><br 
                        class="style35" />
                    </span><span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi">
                    خدماتنا موجهه للشركات والأفراد على حد سواء</span><span class="style35" 
                        dir="LTR">.</span><span dir="LTR" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" dir="LTR" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;"><o:p>
                    &nbsp;</o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    خدمة الرسائل الدعائيةنقدمها للذين يرغبون بالإعلان عن منتجاتهم وحملاتهم لتصل لعدد 
                    كبير من الأشخاص بأقل تكلفة، وأكثر فعالية، وأقصر وقت ممكن.<o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" dir="LTR" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;"><o:p>
                    &nbsp;</o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style36" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    بانضمامك إلينا ستحقق:<o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    - زيادة في أرباحك.<o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    - كسب رضى زبائنك من خلال توفير أحدث الوسائل الدعائية.<o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    - زيادة عدد زبائنك من خلال استهداف فئات جديدة.<o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    &nbsp;</span><span dir="LTR" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style36" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    ميزات الخدمة:<o:p></o:p></span></p>
                <p class="style33" dir="RTL" 
                    style="mso-add-space: auto; mso-list: l0 level1 lfo1; unicode-bidi: embed">
                    <![if !supportLists]><span 
                        style="font-size:
16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">
                    <span style="mso-list:Ignore">-<span class="style35" 
                        style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span></span></span><![endif]><span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    أقل تكلفة إعلان وسعر رسالة زهيد<o:p></o:p></span></p>
                <p class="style33" dir="RTL" 
                    style="mso-add-space: auto; mso-list: l0 level1 lfo1; unicode-bidi: embed">
                    <![if !supportLists]><span 
                        style="font-size:
16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">
                    <span style="mso-list:Ignore">-<span class="style35" 
                        style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span></span></span><![endif]><span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    الإرسال بإستخدام الإنترنت من أى مكان</span><span dir="LTR" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>
                <p class="style33" dir="RTL" 
                    style="mso-add-space: auto; mso-list: l0 level1 lfo1; unicode-bidi: embed">
                    <![if !supportLists]><span 
                        style="font-size:
16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">
                    <span style="mso-list:Ignore">-<span class="style35" 
                        style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span></span></span><![endif]><span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    تصل للملايين فى ثوانى</span><span dir="LTR" 
                        style="font-size:
16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>
                <p class="style34" dir="RTL" 
                    style="mso-add-space: auto; mso-list: l0 level1 lfo1; unicode-bidi: embed">
                    <![if !supportLists]>
                    <span style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;"><span style="mso-list:Ignore">-<span class="style35" 
                        style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span></span></span><![endif]><span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    99% من الرسائل تقرأ فور إستلامها<o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style36" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    ملاحظات:<o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    - يمكن تحديد المنطقة الجغرافية التي سيتم إرسال الرسائل إليها.<o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    - يمكن تحديد اسم مرسل الرسالة وعدد الرسائل التي سيتم إرسالها.<o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    - سعة الرسالة باللغة العربية 70 حرف، وباللغة الإنجليزية 160 حرف.<o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;"><o:p>
                    &nbsp;</o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <a name="_GoBack"></a><span class="style35" lang="AR-SA" 
                        style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    للإتصال بنا:<o:p></o:p></span></p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" dir="LTR" 
                        style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    +249 155221114 </span><span class="style35" lang="AR-SA" 
                        style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    -+249924100002 <o:p></o:p></span>
                </p>
                <p class="MsoNormal" dir="RTL">
                    <span class="style35" lang="AR-SA" 
                        style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
                    او زيارة مكتبنا : مربع (1) المنشية ، مبنى رقم (142)</span><span lang="AR-SA" style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin;mso-bidi-font-family:Arial;mso-bidi-theme-font:minor-bidi"><o:p></o:p></span></p>
                <span class="style26" lang="AR-SA" 
                        style="mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi">
                <br />
            </td>
        </tr>
        </table>
    <br />
    <br />
        <hr width="1350px" />
        <p style="text-align: center; width: 1024px; height: 18px;">
            Copyright © 2016 - 2017 LCT All Rights Reserved         
             
         
             
    </form>

</body>
</html>
