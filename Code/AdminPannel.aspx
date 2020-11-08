<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPannel.aspx.cs" Inherits="OnlineEyeStore.AdminPannel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>



            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3">
                        <h1>
 <strong>Admin Pannel</strong>

                        </h1>
                       

                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminPannel.aspx">Admin Pannel</asp:HyperLink>
&nbsp;|
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AddCategory.aspx">Add Category</asp:HyperLink>
&nbsp;|<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/CategoryManagement.aspx">Category Management</asp:HyperLink>
&nbsp;|<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/AddItems.aspx">Add Item</asp:HyperLink>
&nbsp;|<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ItemManagement.aspx">Item Management</asp:HyperLink>
                        &nbsp;| <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/LogOut.aspx">Log Out</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>



        </div>
    </form>
</body>
</html>
