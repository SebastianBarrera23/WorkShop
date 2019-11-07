<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WorkShop.WebForm5" %>

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
        <div">
            <asp:Button ID="btnGenerarC" CssClass="btn btn-primary" runat="server" Text="Generar json de Categoría" OnClick="btnGenerarC_Click" />
            &nbsp
            <asp:Button ID="btnGenerarP" CssClass="btn btn-primary" runat="server" Text="Generar json de Producto" OnClick="btnGenerarP_Click" />
            &nbsp<br />
            <asp:GridView ID="dgBase" runat="server" style="margin-top: 22px"></asp:GridView>
            &nbsp
            <br />
            <asp:Button ID="btnBase" CssClass="btn btn-danger" runat="server" Text="Generar base categoría" OnClick="btnBase_Click1" />
            <br />
            <br />
            <asp:GridView ID="dgBase1" runat="server"></asp:GridView>
            <br />
            <asp:Button ID="btnBase1" CssClass="btn btn-danger" runat="server" Text="Generar base producto" OnClick="btnBase1_Click" />
            &nbsp
            <asp:Button ID="btnVolver" CssClass="btn btn-primary" runat="server" Text="Volver al index" PostBackUrl="~/Index.aspx" />
        </div>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
