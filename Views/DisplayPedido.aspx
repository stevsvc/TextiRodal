<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPedido.aspx.cs" Inherits="DisplayTableOriginal.Views.DisplayPedido" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Intranet</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <style type="text/css">
        .navbar {
            margin-left: 0;
            border-radius: 0;
        }
        .navbar-image {
            padding-top: 5px;
            padding-left: 5px;
        }
        .mGrid {
            width: 100%;
            background-color: #fff;
            margin: 5px 0 10px 0;
            border: solid 1px #525252;
            border-collapse: collapse;
        }

            .mGrid td {
                padding: 2px;
                border: solid 1px #c1c1c1;
                color: #717171;
            }

            .mGrid th {
                padding: 4px 2px;
                color: #fff;
                background: #424242 url(../Imagenes/grd_head.png) repeat-x top;
                border-left: solid 1px #525252;
                font-size: 0.9em;
            }

            .mGrid .alt {
                background: #fcfcfc url(../Imagenes/grd_alt.png) repeat-x top;
            }

            .mGrid .pgr {
                background: #424242 url(../Imagenes/grd_pgr.png) repeat-x top;
            }

                .mGrid .pgr table {
                    margin: 5px 0;
                }

                .mGrid .pgr td {
                    border-width: 0;
                    padding: 0 6px;
                    border-left: solid 1px #666;
                    font-weight: bold;
                    color: #fff;
                    line-height: 12px;
                }

                .mGrid .pgr a {
                    color: #666;
                    text-decoration: none;
                }

                    .mGrid .pgr a:hover {
                        color: #000;
                        text-decoration: none;
                    }
        .auto-style1 {
            width: 181px;
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%--<table style="width: 50%; text-align: center; background-color: slategray;">  --%>
        <%-- <tr>  --%>
        <%--<td style="align-content:center">  --%>
        <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                &nbsp;<img alt="Logo" class="auto-style1" src="../Imagenes/Image-Logo.png" /></div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="../TextiRodal.html">Inicio</a></li>
                    <li><a href="LogInForm.aspx">Cerrar Sesión</a></li>
                </ul>
            </div>
        </div>
    </nav>
        <br />
        <br />
        <br />
        <div style="text-align:center">
            <asp:Label ID="LblInitial" runat="server" Text="Fecha Inicial"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="ShowCalendar" runat="server" Text="Mostrar Calendario" OnClick="ShowCalendar_Click"></asp:Button>
            <br />
            <br />
            <div style="width:15%; margin: 0 auto">
                <asp:Calendar ID="InitialDate" runat="server" OnSelectionChanged="InitialDate_SelectionChanged" Visible="false" Height="200px" Width="220px" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" ShowGridLines="True">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </div>
            <br />
            <asp:Label ID="LblFinal" runat="server" Text="Fecha Final"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="ShowCalendar1" runat="server" Text="Mostrar Calendario" OnClick="ShowCalendar1_Click" />
            <br />
            <br />
            <div style="width:15%; margin: 0 auto">
                <asp:Calendar ID="EndDate" runat="server" OnSelectionChanged="EndDate_SelectionChanged" Visible="false" Height="200px" Width="220px" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" ShowGridLines="True">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </div>
            <br />
            <asp:Button ID="BtnPedidoFiltro" runat="server" Text="Ver Pedidos" OnClick="BtnPedidoFiltro_Click" />
            <asp:Button ID="BtnReset" runat="server" Text="Nuevas Fechas" OnClick="BtnReset_Click" />
        </div>
        <br />
        <br />
        <asp:GridView ID="GrdPedidos" runat="server" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"></asp:GridView>
        <br />
        <br />
        <asp:Label ID="LblSamTotal" runat="server" Text="Sam Total" Visible="false"></asp:Label>
        <asp:TextBox ID="TxtSamTotal" runat="server" Enabled="False" Visible="false"></asp:TextBox>
        <asp:PlaceHolder ID="DBDataPlaceHolder" runat="server"></asp:PlaceHolder>
        <%--</td> --%>
        <%-- </tr>  --%>
        <%--  </table>  --%>
    </form>
</body>
</html>
