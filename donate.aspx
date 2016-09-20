<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="donate.aspx.cs" Inherits="DoDonate.donate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Do Donate | Donate</title>
    <link href="css/mySite.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
   <form id="form1" runat="server">
    <div>
        <div class="header">
                <img src="images/ddLogo.PNG" />
                <div class="ddNavBar">
                    <a class="navTitle" href="default.aspx">Home&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</a>
                    <a class="navTitle" href="newCharity.aspx">Register a Charity&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</a>
                    <a class="navTitle" href="contactUs.aspx">Contact Us</a>
                </div>
         </div>
         <div style="height:900px; overflow: auto;  margin: auto; width:99%;margin-left:0.5%; border:1px #A9A9A9 solid; ">
              
             <h2 style="text-align:center"><b> Donate</b></h2>
             <div style="margin-left:40%; margin-top:30px">
                 <img style="width:300px" src="images/visa-mastercard-discover-logo.jpg" /><br /><br />
                 <b> Name on Card</b> <input runat="server" type="text" id="txtName" /><br /><br />
                 <b> Card Number </b> <input runat="server" type="text" id="Text1" /><br /><br />
                 <b> Expiry Date</b> <input runat="server" type="text" id="Text2" /><br /><br />
                 <b> Security Code </b> <input runat="server" type="text" id="Text3" /><br /><br />
                 <button style="width:150px" type="button" id="btnPay"  class="btn btn-info" onclick="showMessage()" > Pay </button>
             </div>
         </div>

      
    </div>
    </form>
    <script type="text/javascript">
        function showMessage() {
            alert("Thank you for you donation!");
            location.href = 'default.aspx';
        }
    </script>
</body>
</html>
