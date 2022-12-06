<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="WebApplicationCourse.RegistrationForm" %>

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
                        <asp:Label ID="lblFirstName" Text="First Name" runat="server" /></td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLastName" Text="Last Name" runat="server" /></td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" Text="Email" runat="server" /></td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" />
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                    ControlToValidate="txtEmail" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                    <td><asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Regex </asp:RegularExpressionValidator> </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" Text="Password" runat="server" /></td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" />
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                    ControlToValidate="txtPassword" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>

            </table>
        </div>



        <asp:Label ID="resultTextBox" runat="server" Text="Label"></asp:Label>



        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
        </p>



    </form>
</body>
</html>
