<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calis.aspx.cs" Inherits="bonita_mazamitla.calis" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registro</title>
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

        
        .auto-style5 {
            width: 496px;
            margin-bottom: 1rem;
        }

        
        .auto-style8 {
            height: 24px;
        }

        
        .auto-style9 {
            height: 65px;
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
                            <h2 class="tm-block-title">Registro</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <form action="" class="tm-signup-form">
                                <div class="form-group">
                                    <label style="margin-top:10px;">Fecha registro</label>
                                    <br />
                                    <asp:TextBox ID="txtFechaInicio" runat="server" class="form-control" placeholder="Fecha registro" Width="726px" Enabled="False"></asp:TextBox>
                                </div>

                                <div class="auto-style5">
                                    <label style="margin-top:10px;">Fecha Inicio </label> &nbsp;&nbsp;&nbsp;    
                                    &nbsp;<asp:Button ID="btndateInittial" runat="server" OnClick="btndateInittial_Click" Text="Seleccionar" />
                                    <asp:TextBox ID="txtFName" runat="server" class="form-control" placeholder="Fecha Inicio" Height="41px" Width="722px"></asp:TextBox>
                                    
                                </div>
                                 <div class="form-group">
                                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar2_SelectionChanged" Visible="False" Width="220px">
                                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                        <WeekendDayStyle BackColor="#CCCCFF" />
                                    </asp:Calendar>
                                <div class="form-group">
                                    <label style="margin-top:10px;">Fecha Cierre</label>
                                    <br />
                                    <asp:TextBox ID="txtFechaCierre" runat="server" class="form-control" placeholder="Fecha Cierre" Width="726px" Enabled="False"></asp:TextBox>
                                </div>
                                <div class="auto-style9">
                                    <label style="margin-top:10px;">Tipo de pago</label>
                    
                                    <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Tipo de pago" Width="722px"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    
                                    <label style="margin-top:10px;" class="auto-style8">
                                    <br />
                                    Menores<br />
                                    <br />
                                    </label>
                                        <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" Height="39px" Width="722px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                            <asp:ListItem></asp:ListItem>
                           
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                        </asp:DropDownList>
                                </div>

                                

                                

                                <div class="form-group">
                                    <label for="password">
                                        Adultos

                                    </label>
                                   <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Height="39px" Width="722px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                              
                               
                              

					 
                                </div>
                                


                                
                                


                                <div class="row">
                                    <div class="col-12 col-sm-8 tm-btn-right">
                                       
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnReservar" runat="server" class="btn btn-primary" OnClick="btnReservar_Click" Text="Reservar" />
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


