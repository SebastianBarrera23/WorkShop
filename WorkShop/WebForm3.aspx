<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WorkShop.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Carga desde la base de datos</title>
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
            <h2>Carga desde la base de datos</h2>
            <asp:DropDownList ID="ddlDatos" runat="server"></asp:DropDownList>

            <asp:GridView ID="dgDatos" runat="server" style="margin-top: 40px"></asp:GridView>
            <br />
            <asp:Button ID="btnCargar" CssClass="btn btn-primary" runat="server" Text="Cargar" OnClick="btnCargar_Click" />
            &nbsp
            <asp:Button ID="btnVolver" CssClass="btn btn-primary" runat="server" Text="Volver al index" PostBackUrl="~/Index.aspx" />  
        </div>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
