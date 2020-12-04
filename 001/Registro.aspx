<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="_001.Registro" %>

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

        <!-- ********************  FORMULARIO DE REGISTRO  ********************  -->

        <div class="form-content">

            <form action="#" class="form-register" runat="server">

                <div class="form-subtittle">
                    <h3 class="form-subtittle">Ingresa los siguientes datos</h3>
                </div>

                <div class="contenedor-input-register">

                    <label for="primer-nombre" class="form-label-register"></label>
                    <asp:TextBox ID="txtnombre1" runat="server" CssClass="form-input-register" required="true" placeholder="Primer Nombre"></asp:TextBox>


                    <label for="segundo-nombre" class="form-label-register"></label>
                    <asp:TextBox ID="txtnombre2" runat="server" CssClass="form-input-register" placeholder="Segundo Nombre"></asp:TextBox>


                    <label for="primer-apellido" class="form-label-register"></label>
                     <asp:TextBox ID="txtapellido1" runat="server" CssClass="form-input-register" required="true" placeholder="Primer Apellido"></asp:TextBox>


                    <label for="segundo-apellido" class="form-label-register"></label>
                    <asp:TextBox ID="txtapellido2" runat="server" CssClass="form-input-register" placeholder="Segundo Apellido"></asp:TextBox>


                    <label for="correo" class="form-label-register"></label>
                    <asp:TextBox ID="txtemail" type="email" runat="server" CssClass="form-input-register" required="true" placeholder="Email UDLA"></asp:TextBox>


                    <label for="pass-register" class="form-label-register"></label>
                    <asp:TextBox ID="txtclave" type="password" runat="server" CssClass="form-input-register" required="true" placeholder="Contraseña"></asp:TextBox>


                </div>

                <div class="contenedor-combobox">
                    <label for="doc-id" class="form-label-box">Tipo de documento:</label>
                    <select class="form-box" name="doc-id" id="doc-id" required="true">
                        <option value="1">Cédula de Ciudadania</option>
                        <option value="2">Cédula Extranjera</option>
                        <option value="3">Tarjeta de Identidad</option>
                    </select>
                    <label for="doc-id" class="form-label-box">Identificación:</label>
                    <asp:TextBox ID="txtidentificacion" type="number" runat="server" CssClass="form-input-register" required="true" placeholder="Identificación"></asp:TextBox>
                </div>
                <div class="contenedor-combobox">
                    <label for="doc-id" class="form-label-box">Rol en el sistema</label>
                    <select class="form-box" name="doc-id" id="doc-id" required="true">
                        <option value="1">Estudiante</option>
                        <option value="2">Docente</option>
                    </select>
                </div>

                <asp:Button CssClass="btn-register" Text="Registrarse" runat="server" ID="btnRegistro" OnClick="btnRegistro_Click"></asp:Button><br>
            

                <asp:Label ID="lbprueba" runat="server" Text="Label"></asp:Label>
                
            </form>
        </div>



        <!-- FORMULARIO RECUPERACIÓN
          
        <div class="form-content">
           
            <form action="" class="form-recovery">
                
                    <div class="form-header">
                        <h1 class="form-tittle-recovery">RECUPERAR CLAVE.</h1>
                        <h2 class="form-subtittle-recovery">La nueva contraseña sera enviada al correo institucional. <span>Por favor ingrese su correo electronico institucional.</span></h2>

                    </div>

                    <div class="contenedor-input-recovery">
                        
                        <label for="correo-recovery" class="form-label-recovery"></label>
                        <input type="email" class="form-input-recovery" id="correo-recovery" placeholder="Correo electronico" required="true">
                       
                    </div>
                    
                    <input type="submit" class="btn-send" value="Enviar"><br>
                    <button type="button" class="icon-close btn-close-recovery alt-form2"></button>
                    
                </form>
        </div> -->

    </div>




</body>

</html>