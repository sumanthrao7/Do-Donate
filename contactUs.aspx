<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="DoDonate.contactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Do Donate | Contact Us</title>
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
             
             <h2 style="text-align:center"><b> Contact Us</b></h2>
             <div style="margin-left:40%; margin-top:30px">
                 <b>Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <input type="text" id="txtName" /><br /><br />
                 <b>Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <input type="text" id="txtEmail" /><br /><br />
                 <b> Message</b> <input type="text" style="width:300px;height:200px" id="txtMessage" /><br /><br />
                 <button style="width:150px" type="button" class="btn btn-info" onclick="showConfirmation()" > Submit </button>
             </div>
         </div>
    </div>
    </form>
    <script type="text/javascript">
        function showConfirmation() {
            alert("Thank you for your message! We'll get back to your as soon as possible.");
            location.href = "default.aspx";
        }
    </script>
</body>
</html>
