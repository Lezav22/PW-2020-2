<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_001.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="UTF-8">
    <meta name="description" content="Sistema de Asesorias UDLA">
    <meta name="viewport" content="width=device-width, user-scalable=no,initial-scale=1.0, maximun-scale=3.0, minimun-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sistema de Asesoría UDLA</title>

    <link href="https://file.myfontastic.com/LWhX4K5QUgoiXqXj45HMJh/icons.css" rel="stylesheet">

    <link rel="stylesheet" href="Style/css/StylesBody.css">
    <link rel="stylesheet" href="Style/css/StylesLogin.css">
    <link rel="stylesheet" href="Style/css/StylesRegister.css">
    <link rel="stylesheet" href="Style/css/StylesRecovery.css">

    <script src="Style/js/jquery-3.3.1.min.js"></script>
    <script src="Style/js/Form.js"></script>

</head>

<body>

    <div class="cod-container">
        <div class="form-header">
            <h1 class="form-tittle"><span class="logo"><img src="Style/img/Udla.png" width="60" height="60" alt="Logo universidad UDLA"></span>Sistema de Asesorías UDLA</h1>
        </div>

        <div class="form-content">

            <form action="#" class="form-login" runat="server">

                <div class="form-subtittle">
                    <h3 class="form-subtittle">Ingresa los siguientes datos</h3>
                </div>

                <div class="contenedor-input">
                    <label for="user" class="form-label-log"><span class="icon-user"></span></label>
                    <asp:TextBox ID="txtusuario" runat="server" Cssclass="form-input-login" required="true" autocomplete="off"></asp:TextBox>
                    <label for="user" class="label-text">Usuario</label>
                </div>
                
                <div class="contenedor-input">
                    <label for="pass-login" class="form-label-log"><span class="icon-key"></span></label>
                    <asp:TextBox ID="txtclave" runat="server" Cssclass="form-input-login"  required="true" autocomplete="off"></asp:TextBox>
                    <label for="pass-login" class="label-text">Contraseña</label>
                </div>

                <asp:Button CssClass="btn-login" Text="Iniciar Sesión" runat="server" ID="btnIniciar" OnClick="btnIniciar_Click"></asp:Button> 

                <asp:Label ID="lbpruebalogin" runat="server" Text="Label"></asp:Label>

                 <div class="contenedor-opciones">
                    <p>¿No tienes cuenta?<a class="option alt-form" id="btnReg" href="Registro.aspx">Regístrate</a></p>
                    <a class="option alt-form2" id="btnRec" href="#">¿Olvido su contraseña?</a>
                </div>

            </form>

        </div>

</body>

</html>