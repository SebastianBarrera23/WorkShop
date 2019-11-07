<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WorkShop.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Carga de archivos XML</title>
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
            <h2>Carga de archivos XML</h2>
            <br />
            <asp:DropDownList ID="ddlDatos" runat="server"></asp:DropDownList>
            <br />
            <asp:GridView ID="dgDatos" runat="server" style="margin-top: 29px"></asp:GridView>
            <br />
            <asp:Button ID="btnGenerar" CssClass="btn btn-primary" runat="server" Text="Generar" OnClick="btnGenerar_Click" />
            &nbsp
            <asp:Button ID="btnVolver" CssClass="btn btn-primary" runat="server" Text="Volver al index" PostBackUrl="~/Index.aspx" />
        </div>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
