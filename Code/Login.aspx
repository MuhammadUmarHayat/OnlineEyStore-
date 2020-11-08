<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineEyeStore.Login" %>

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
            font-size: x-large;
        }
        .auto-style3 {
            color: #660066;
        }
        .auto-style4 {
            color: #FFCC66;
        }
        .auto-style5 {
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
                    <td class="auto-style2" colspan="7">
                        <h1>
                            <span class="auto-style4">
<strong>Online Eye Wear Store</strong></span>

                        </h1>
                        <strong>Login Page</strong>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="7">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">Select User Type</td>
                    <td colspan="3">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>Customer</asp:ListItem>
                            <asp:ListItem>Suplier</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">Please enter User ID</td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">please enter Password</td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                    <td colspan="3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login " />
                        <strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                    <td colspan="3">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegisteraionForm.aspx">Register </asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2" class="auto-style5">


                        <center>


                      
                        
                       <asp:DataList ID="DataList1" runat="server" BackColor="#3333CC" BorderColor="#666666"

            BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"

            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal"

            Width="600px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemDataBound="DataList1_ItemDataBound1" UseAccessibleHeader="True" DataKeyField="itemid" OnItemCommand="DataList1_ItemCommand">

            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />

            <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"

                HorizontalAlign="Center" VerticalAlign="Middle" />

            <HeaderTemplate>

                Our Products 

            </HeaderTemplate>

                             <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="2px" />

                             <ItemTemplate> 
 <asp:Image ID="imgEmp" runat="server" Width="100px" Height="120px" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "image") %>' style="padding-left:40px"/><br />

                <b>Title :</b>

                <asp:Label ID="lblTitle" runat="server" Text='<%# Bind("title") %>'></asp:Label>
<br />

                            <b>Unit Price :</b>

                <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("unitPrice") %>'></asp:Label>

                                 <br />

                                  <b>Item Unique ID :</b>

                <asp:Label ID="Label4" runat="server" Text='<%# Bind("itemid") %>'></asp:Label>
                                 <br />

                            <b>By :</b>

                <asp:Label ID="Label3" runat="server" Text='<%# Bind("userid") %>'></asp:Label>
                                 <br />




                                
                                 <br />

                                  </ItemTemplate>












                        </asp:DataList> 
                        
                          </center>
                        
                     </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                    <td colspan="3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>



        </div>
    </form>
</body>
</html>
