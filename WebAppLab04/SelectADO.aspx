<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectADO.aspx.cs" Inherits="WebAppLab04.SelectADO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background: #303030; color:#fff">
            <asp:GridView ID="gvCourses" runat="server" OnSelectedIndexChanged="gvCourses_OnSelectedIndexChanged">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
