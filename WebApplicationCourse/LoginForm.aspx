<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="WebApplicationCourse.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml%22%3E%3E">
<head runat="server">
    <head>
    <title></title>
    </head>
    <style type="text/css">
        .auto-style1 {
            width: 190px;
        }
        .auto-style2 {
            width: 408px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label id="lblCustomerId" Text="Customer Id" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox id="txtCustomerId" runat="server" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="White" BorderColor="#CC3300" ControlToValidate="txtCustomerId" ErrorMessage="This field can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                </tr>


                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:CheckBox ID="chkRemember" Text ="Remember me" runat="server" />

                        <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>

                    </td>
                    <td>

                    </td>
                </tr>

                <tr>
                    <td>

                    </td>
                    <td>

                        <asp:Button ID="btnLogin" runat="server" Text="LogIn" OnClick="btnLogin_Click" />

                    </td>
                    <td>

                    </td>
                </tr>
                
                <p>
                    <asp:Label ID="resultTextBox" runat="server"></asp:Label>
                </p>
            </table>
        </div>

    </form>
</body>
</html>