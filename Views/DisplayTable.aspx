<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayTable.aspx.cs" Inherits="DisplayTableOriginal.Views.DisplayTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title>Esto es lo que tenemos que hacer en esta semana</title>  
</head>  
<body>  
    <form id="form1" runat="server">  
        <table style="width: 50%; text-align: center; background-color: skyblue;">  
            <tr>  
                <td style="align-content:center">  
                    <asp:PlaceHolder ID="DBDataPlaceHolder" runat="server"></asp:PlaceHolder>  
                </td>  
            </tr>  
        </table>  
    </form>  
</body>  
</html>
