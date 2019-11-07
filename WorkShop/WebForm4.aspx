<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WorkShop.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />

    <style>
        body{
            background-color:#ECF22F;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTexto" runat="server" Text="<h3>Seleccione una categoría</h3>"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlCategoria" runat="server" AutoPostBack="True"></asp:DropDownList>
            <asp:GridView ID="dgProducto" runat="server"></asp:GridView>
            <br />
            <asp:Button ID="btnVolver" CssClass="btn btn-primary" runat="server" Text="Volver al index" PostBackUrl="~/Index.aspx" />
        </div>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
