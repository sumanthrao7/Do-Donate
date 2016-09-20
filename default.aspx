<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DoDonate._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Do Donate | Home</title>
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
        <div>
            <div style="height:900px; overflow: auto;  margin: auto; width:99%;margin-left:0.5%; border:1px #A9A9A9 solid; ">
                <asp:Repeater runat="server" ID="rptContent">
                    <ItemTemplate>
                        <div style="height:270px;width:98%;margin-left:12px; margin-top:10px; border:1px #A9A9A9 solid; ">
                            <table style="text-align:center">
                                <tr>
                                    <td ><img style="margin:15px" class="boxImage" src="<%#DataBinder.Eval(Container.DataItem, "ImageUrl") %>" /></td>
                                    <td > 
                                        <h3> <b><%#DataBinder.Eval(Container.DataItem, "CharityName") %></b> </h3>
                                        <p> <%#DataBinder.Eval(Container.DataItem, "AboutCharity") %> </p>
                                        <a> <%#DataBinder.Eval(Container.DataItem, "Website") %></a> <br /><br />
                                        <button style="width:150px" type="button" class="btn btn-info" onclick="location.href='donate.aspx'" > Donate </button>
                                        <%--<asp:Button ID="btnDonate" style="width:150px" OnClick="btnDonate_Click" CssClass="btn btn-info" runat="server" Text="Donate" />--%>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        </ItemTemplate>
                    </asp:Repeater>
             </div>
        </div>
    </div>
    </form>
</body>
</html>
