<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DisplayTableOriginal.Views.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
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
        <div style="text-align: center">
            <asp:Label ID="Begin" runat="server" Text="Bienvenido, usa tu nombre y apellido para verificar tu identidad. " ForeColor="Black" Font-Size="Medium" Font-Strikeout="False" Font-Bold="False" Font-Italic="True"></asp:Label>
        </div>
        <br />
        <div style="text-align: right; width: 60%">
            <asp:PlaceHolder ID="Hide" runat="server">
                <asp:Label ID="VerificacionName" runat="server" Text="Nombre: "></asp:Label>
                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="VerificationLastName" runat="server" Text="Apellido: "></asp:Label>
                <asp:TextBox ID="TxtLastName" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="VerificationButton" runat="server" Text="Verificar" OnClick="VerificationButton_Click" />
            </asp:PlaceHolder>
        </div>
        <div style="text-align: center">
            <asp:Label ID="ErrorMessage" runat="server" Visible="false" Text="Su nombre no esta registrado, el uso de esta opcion esta restringido para administradores" ForeColor="Red"></asp:Label>
        </div>
        <div style="text-align: center">
            <asp:Label ID="EmptyBox" runat="server" Visible="false" Text="Los campos son obligatorios" ForeColor="Red"></asp:Label>
        </div>
        <div style="text-align: center">
            <asp:Label ID="WelcomeMessage" runat="server" Visible="False" Text="Bienvenido, crea un Usuario y Contraseña" ForeColor="Black" Font-Size="Medium" Font-Strikeout="False" Font-Bold="False" Font-Italic="True"></asp:Label>
        </div>
        <br />
        <div style="text-align: right; width: 60%">
            <asp:PlaceHolder ID="Show" runat="server" Visible="false">
                <asp:Label ID="UserNameLabel" runat="server" Text="Usuario: "></asp:Label>
                <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="PasswordLabel" runat="server" Text="Contraseña: "></asp:Label>
                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <asp:Label ID="ConfirmPsswrd" runat="server" Text="Confirmar Contraseña: "></asp:Label>
                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                <asp:Button ID="RegisterButton" runat="server" CommandName="Register" Text="Register" OnClick="RegisterButton_Click" />
            </asp:PlaceHolder>
        </div>
        <br />
        <div style="text-align: center">
            <asp:Label ID="PasswordsNotMatch" runat="server" Visible="false" Text="Las contraseñas tienen que coincidir" ForeColor="Red"></asp:Label>
        </div>
        <div style="text-align: center">
            <asp:Label ID="EmptyBoxRgt" runat="server" Visible="false" Text="Los campos son obligatorios" ForeColor="Red"></asp:Label>
        </div>
        <br />
        <div style="text-align: center">
            <asp:PlaceHolder ID="Jump" runat="server" Visible="false">Si ya tienes un Usuario <a href="LogInForm.aspx">click aquí</a>
            </asp:PlaceHolder>
        </div>
    </form>
</body>
</html>

