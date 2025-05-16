<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormLogin.aspx.cs" Inherits="WebAppFacturacion.Login.FormLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Sistema Facturación</title>
    <link href="../Content/MisEstilos.css" rel="stylesheet" />
    <link rel="shortcut icon" href="../Imagenes/Favicon.png" type="image/x-icon" />

    <style type="text/css">
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #2c3e50, #3498db);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background: white;
            padding: 2rem;
            border-radius: 16px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.25);
            width: 360px;
        }

            .login-container h2, .login-container h3 {
                margin: 0;
                text-align: center;
                color: #2c3e50;
            }

            .login-container h3 {
                margin-bottom: 1.5rem;
                font-weight: normal;
            }

        .form-group {
            margin-bottom: 1rem;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 600;
            color: #34495e;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 0.5rem;
            font-size: 1rem;
            border-radius: 8px;
            border: 1px solid #ccc;
            outline: none;
            box-sizing: border-box;
        }

        input[type="submit"], .modern-btn {
            width: 100%;
            padding: 0.75rem;
            background: #3498db;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease;
        }

            .modern-btn:hover {
                background: #2980b9;
            }

        .login-footer {
            margin-top: 1rem;
            text-align: center;
            font-size: 0.85rem;
            color: #888;
        }

        .message-panel {
            background: #333;
            color: white;
            padding: 0.5rem;
            border-radius: 8px;
            margin-top: 1rem;
            text-align: center;
        }

        .cerradura {
            display: block;
            margin: 0 auto 1rem auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>SISTEMA</h2>
            <h3>DE FACTURACIÓN ELECTRÓNICA</h3>

            <asp:Image ID="ImgCerradura" runat="server" ImageUrl="~/Imagenes/CerraduraRoja.png" CssClass="cerradura" Width="70" Height="70" />

            <div class="form-group">
                <label for="TextUsuario">Usuario</label>
                <asp:TextBox ID="TextUsuario" runat="server" CssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="TextClave">Clave</label>
                <asp:TextBox ID="TextClave" runat="server" TextMode="Password" CssClass="form-control" />
            </div>

            <asp:Button ID="BtnAceptar" runat="server" Text="Iniciar sesión" CssClass="modern-btn" OnClick="BtnAceptar_Click" />

            <asp:Panel ID="PnlMensaje" runat="server" CssClass="message-panel">
                <asp:Label ID="LblMensaje" runat="server" Text="Mensaje." />
            </asp:Panel>
        </div>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="2000" Enabled="false" OnTick="Timer1_Tick"></asp:Timer>

    </form>
</body>
</html>
