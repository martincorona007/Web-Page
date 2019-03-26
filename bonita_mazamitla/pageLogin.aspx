<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pageLogin.aspx.cs" Inherits="bonita_mazamitla.pageLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 0px 30px 1px #ebebe0;
            background-color: white;
          
        }

        .content {
			  position: absolute;
			  left: 50%;
			  top: 50%;
			  -webkit-transform: translate(-50%, -50%);
			  transform: translate(-50%, -50%);
			}

        
    </style>
</head>
<body>

    <form id="form1" runat="server" class=" content auto-style1">
        <div class"form-group">
            <label style="margin-top:10px;" >Correo</label>
            <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="micorreo@lapagina.com" ></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Correo no valido" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <div class"form-group">
            <label style="margin-top:10px;">Contraseña</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="form-control" placeholder="******"></asp:TextBox>
        </div>
        <div class"form-group" style="text-align:center;">
            <asp:Button ID="btnlogin" runat="server" style="margin-top:20px; text-align:center;" class="btn btn-primary" OnClick="btnlogin_Click" Text="Iniciar Sesión" />
        </div>
        <div class"form-group">
                        <asp:Label ID="lblstate" runat="server"></asp:Label>
                        <asp:Label ID="lblID" runat="server"></asp:Label>
        </div>
        <div class"form-group">
            <asp:Button ID="btnSingUp" runat="server" OnClick="btnSingUp_Click" class="btn btn-primary" Text="Registrarse" />
        </div>
    </form>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
