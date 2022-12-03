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
                        <asp:Label ID="lblCustomerId" Text="Customer Id" runat="server" /></td>
                    <td>
                        <asp:TextBox ID="txtCustomerId" runat="server" />
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                    ControlToValidate="txtCustomerId" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCompanyName" Text="CompanyName" runat="server" /></td>
                    <td>
                        <asp:TextBox ID="txtCompanyName" runat="server" />
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="txtCompanyName" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblContactName" Text="Contact Name" runat="server" /></td>
                    <td>
                        <asp:TextBox ID="txtContactName" runat="server" />
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblContactTitle" Text="Contact Title" runat="server" /></td>
                    <td>
                        <asp:TextBox ID="txtContactTitle" runat="server" />
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAddress" Text="Address" runat="server" /></td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" />
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCity" Text="City" runat="server" /></td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblRegion" Text="Region" runat="server" /></td>
                    <td>
                        <asp:TextBox ID="txtRegion" runat="server" />
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPostalCode" Text="Postal Code" runat="server" /></td>
                    <td>
                        <asp:TextBox ID="txtPostalCode" runat="server" />
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCountry" Text="Country" runat="server" /></td>
                    <td>
                        <asp:TextBox ID="txtCountry" runat="server" />
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPhone" Text="Phone" runat="server" /></td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server" />
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />

                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
            </table>
        </div>

                    

        <asp:Label ID="resultTextBox" runat="server" Text="Label"></asp:Label>

                    

    </form>
</body>
</html>
