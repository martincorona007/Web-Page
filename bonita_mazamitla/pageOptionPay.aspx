<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pageOptionPay.aspx.cs" Inherits="bonita_mazamitla.opcion" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Opción</title>
    <!--

    Template 2108 Dashboard

	http://www.tooplate.com/view/2108-dashboard

    -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/tooplate.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style type="text/css">
        
        .content {
			  position: absolute;
			  left: 50%;
			  top: 50%;
			  -webkit-transform: translate(-50%, -50%);
			  transform: translate(-50%, -50%);
			}

        
        .auto-style2 {
            font-size: xx-large;
        }

        
        .auto-style4 {
            left: 0px;
            top: 0px;
            width: 363px;
        }
        .auto-style5 {
            left: 0px;
            top: 0px;
            width: 358px;
        }

        
        .auto-style6 {
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            width: 1148px;
            margin-left: -15px;
            margin-right: -15px;
        }
        .auto-style7 {
            width: 1288px;
            margin-bottom: 1rem;
        }

        
    </style>
</head>
<body class="bg03">


    <form id="form1" runat="server">
    <div class="container">
        <div class="table">
            <div class="col-12">
                
            </div>
        </div>
        <!-- row -->
        
            
            <div class="alert-danger">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12">
                            <h1 class="text-uppercase tm-banner-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Seleccione la opción a pagar</h1>


                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <form action="" class="tm-signup-form">
                                <div class="form-group">
                                    <label style="margin-top:80px;"><span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ahora En linea</span></label>
                                    <label style="margin-top:10px;"><span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;Establecimiento</span></label>
                                     
                                
                                </div>

                                


                                <div class="auto-style7">
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                   <asp:Button ID="btnPagarAhora" runat="server" class="btn btn-primary" OnClick="btnPagarAhora_Click" Text="Pagar ahora" />   
                                        
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:Button ID="btnEstablecimiento" runat="server" class="btn btn-primary" OnClick="btnEstablecimiento_Click" Text="Pagar en el establecimiento" />   
                                          
                   
                                    </div>


                                
                                <div class="auto-style6">
                                    <div class="auto-style4">
                                       
                                        &nbsp;</div>
                                        <div class="auto-style5">
                                       
                                        </div>
                                </div>

                                

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="row tm-mt-small">
            <div class="col-12 font-weight-light">
                <p class="d-inline-block tm-bg-black text-white py-2 px-4">
                    Copyright &copy; 2018 Bonita Mazamitla
                   
                </p>
            </div>
        </footer>
    </div>

    </form>
</body>

</html>