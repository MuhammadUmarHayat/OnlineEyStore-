<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogOut.aspx.cs" Inherits="OnlineEyeStore.LogOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<link href="StyleSheet1.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Session Expire!</h1>
            <hr />
            You are successfully logged out. To login again <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Click Here</asp:HyperLink>
        </div>
    </form>
</body>
</html>
