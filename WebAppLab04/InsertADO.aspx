<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertADO.aspx.cs" Inherits="WebAppLab04.InsertADO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:TextBox ID="txtCourse" runat="server"></asp:TextBox>
        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click"  />
        <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
