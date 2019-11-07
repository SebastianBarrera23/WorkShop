<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WorkShop.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Index</title>
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
            <nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
                <a class="navbar-brand" href="#">ASP.NET-WORKSHOP</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                  <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                      <a class="nav-link" href="WebForm1.aspx">Formulario 1</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="WebForm3.aspx">Formulario 2</a>
                    </li> 
                    <li class="nav-item">
                      <a class="nav-link" href="WebForm4.aspx">Formulario 3</a>
                    </li>   
                    <li class="nav-item">
                      <a class="nav-link" href="WebForm5.aspx">Formulario 4</a>
                    </li> 
                      <li class="nav-item">
                      <a class="nav-link" href="WebForm6.aspx">Formulario 5</a>
                    </li> 
                  </ul>
                </div>  
              </nav>
        </div>

        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
