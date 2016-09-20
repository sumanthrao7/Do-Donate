<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newCharity.aspx.cs" Inherits="DoDonate.newCharity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Do Donate | New Charity</title>
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
             
             <h2 style="text-align:center"><b> New Charity</b></h2>
             <div style="margin-left:40%; margin-top:30px">
                 <b> Charity Name</b> <input runat="server" type="text" id="txtName" /><br /><br />
                 <b> Upload Image</b> <input runat="server" style="display:inline" type="file" id="flImage" /><br /><br />
                 <b> About Charity</b> <input runat="server" type="text" style="width:300px;height:50px" id="txtAbout" /><br /><br />
                 <b> Website Link &nbsp;</b> <input runat="server" type="text" id="txtLink" /><br /><br /><br />
                 <asp:Button runat="server" ID="btnSubmit" Text="Submit" Width="150px" CssClass="btnClass btn btn-info" OnClick="btnSubmit_Click" />
             </div>
         </div>
    </div>
    </form>
</body>
</html>
