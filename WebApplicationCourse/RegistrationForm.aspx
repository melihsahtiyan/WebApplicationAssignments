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
                        <asp:Label id="lblName" Text="Name" runat="server" /></td>
                    <td>
                        <asp:TextBox id="txtName" runat="server" />
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label id="lblSurname" Text="Surname" runat="server" /></td>
                    <td>
                        <asp:TextBox id="txtSurname" runat="server" />
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtSurname"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label id="lblPassword" Text="Password" runat="server" /></td>
                    <td>
                        <asp:TextBox id="txtPassword" runat="server" />
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label id="lblEmail" Text="Email" runat="server" /></td>
                    <td>
                        <asp:TextBox id="txtEmail" runat="server" />
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label id="Gender" Text="Gender" runat="server" /></td>
                    <td class="auto-style1">

                        <asp:RadioButton ID="btnMale" runat="server" Text="Male" />
                        <asp:RadioButton ID="btnFemale" runat="server" Text="Female" />

                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                 <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />

                    </td>
                    <td class="auto-style2"></td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>