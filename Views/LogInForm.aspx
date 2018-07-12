<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInForm.aspx.cs" Inherits="DisplayTableOriginal.Views.LogInForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    &nbsp;<img alt="Logo" class="auto-style1" src="../Imagenes/Image-Logo.png" />
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="../TextiRodal.html">Inicio</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <br />
        <br />
        <br />
        <div style="text-align:right; width:50%">
            <asp:Label ID="UserNameLabel" runat="server" Text="Usuario: "></asp:Label>
            <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="PasswordLabel" runat="server" Text="Contraseña: "></asp:Label>
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:CheckBox ID="RememberMe" runat="server" Text="Recuerdame." />
            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
            <br />
            <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Iniciar Sesión" ValidationGroup="Login" OnClick="LoginButton_Click" />
        </div>
        <div style="text-align:center">
            <asp:Label ID="EmptyBox" runat="server" Visible="false" Text="Los campos son obligatorios" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
