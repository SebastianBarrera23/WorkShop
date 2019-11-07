<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="WorkShop.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Leer Jsons</title>
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
            <h2>Leer Json Categoría</h2>
            <asp:GridView ID="dgCategoria" runat="server"></asp:GridView>
            <br />
            <asp:Button ID="btnLeerCategoria" CssClass="btn btn-primary" runat="server" Text="Leer Json Categoría" OnClick="btnLeerCategoria_Click" />
        </div>
        <br />
        <div>
            <h2>Leer Json Producto</h2>
            <asp:GridView ID="dgProducto" runat="server"></asp:GridView>
            <br />
            <asp:Button ID="btnLeerProducto" CssClass="btn btn-primary" runat="server" Text="Leer Json Producto" OnClick="btnLeerProducto_Click" />
            &nbsp
            <asp:Button ID="btnVolver" CssClass="btn btn-primary" runat="server" Text="Volver al index" PostBackUrl="~/Index.aspx" />        
        </div>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
