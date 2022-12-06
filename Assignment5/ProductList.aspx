<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="WebApplicationCourse.ProductList" %>
<%@ Register TagPrefix="asp" Namespace="System.Windows.Forms" Assembly="System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="ProductListView" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" />  
                    <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" />
                    <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" />
                    <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" />
                    <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" />
                    <asp:ImageField DataImageUrlField="ImageUrl" HeaderText="ImageUrl"/>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
