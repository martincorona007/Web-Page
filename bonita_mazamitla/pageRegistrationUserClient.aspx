<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pageRegistrationUserClient.aspx.cs" Inherits="bonita_mazamitla.pageRegistrationUserClient" %>

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
                                    <label style="margin-top:10px;">Nombre</label>  <asp:RequiredFieldValidator ID="RFVname" runat="server" ControlToValidate="txtName" ErrorMessage="Nombre requerido" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="nombre" Width="799px"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label style="margin-top:10px;">Apellido Materno</label>    <asp:RequiredFieldValidator ID="RFVFname" runat="server" ControlToValidate="txtFName" ErrorMessage="Apellido requerido" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtFName" runat="server" class="form-control" placeholder="Apellido Materno" Height="41px" Width="807px"></asp:TextBox>
                                    
                                </div>

                                <div class="form-group">
                                    <label style="margin-top:10px;">Apellido Paterno</label>   
                                    <asp:TextBox ID="txtLName" runat="server" class="form-control" placeholder="Apellido Paterno" Width="806px"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label style="margin-top:10px;">Genero</label>   
                                     <td>      
                                        <asp:RequiredFieldValidator ID="RFVGenre" runat="server" ControlToValidate="DDLGenre" ErrorMessage="Genero requerido" Font-Bold="True" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                                        <asp:DropDownList ID="DDLGenre" runat="server" class="form-control" placeholder="Genero" Height="36px" Width="395px">
                                            <asp:ListItem Value="0">Select</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>Other</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </div>

                                <div class="form-group">
                                    <label style="margin-top:10px;">Correo</label>       <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Correo requerido" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="REVemail" runat="server" ControlToValidate="txtEmail" ErrorMessage=" Ingresar correo valido" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    
                                    <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Correo" Width="801px"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="password">Contaseña</label>     <asp:RequiredFieldValidator ID="RFVpassword" runat="server" ControlToValidate="txtPasword" ErrorMessage="Contraseña requerida" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtPasword" runat="server" class="form-control" placeholder="******" TextMode="Password" Width="798px"></asp:TextBox>
                                </div>
                              
                                <div class="form-group">
                                    <label for="password2">Confirmar Contraseña</label>
                                      <asp:RequiredFieldValidator ID="RFVCpassword" runat="server" ControlToValidate="txtCPassword" ErrorMessage="Confirmación requerida " Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                      <asp:CompareValidator ID="CVpassword" runat="server" ControlToCompare="txtPasword" ControlToValidate="txtCPassword" ErrorMessage="Ambas contraseñas debe ser iguales" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
                 
                                      <asp:TextBox ID="txtCPassword" runat="server" class="form-control" placeholder="******" TextMode="Password" Width="796px"></asp:TextBox>
                
                                </div>
                               
                              <div class="form-group">
                                    <label style="margin-top:10px;">Pais</label>   
                                  

					 <td>
                        <asp:RequiredFieldValidator ID="RFVcountry" runat="server" ControlToValidate="DDLCountry" ErrorMessage="Pais requerido" Font-Bold="True" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                  
                        <asp:DropDownList ID="DDLCountry" runat="server" class="form-control" Height="32px" Width="387px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" DataTextField="countryName" DataValueField="countryName">
                             <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem>Afghanistan</asp:ListItem>
                            <asp:ListItem>Albania</asp:ListItem>
                            <asp:ListItem>Armenia</asp:ListItem>
                            <asp:ListItem>Andorra</asp:ListItem>
                            <asp:ListItem>Angola</asp:ListItem>
                            <asp:ListItem>Anguila</asp:ListItem>
                            <asp:ListItem>Antigua</asp:ListItem>
                            <asp:ListItem>Arabia Saudí</asp:ListItem>
                            <asp:ListItem>Argeria</asp:ListItem>
                            <asp:ListItem>Argentina</asp:ListItem>
                            <asp:ListItem>Armenia</asp:ListItem>
                            <asp:ListItem>Aruba</asp:ListItem>
                            <asp:ListItem>Australia</asp:ListItem>
                            <asp:ListItem>Austria</asp:ListItem>
                            <asp:ListItem>Azerbaijan</asp:ListItem>
                            <asp:ListItem>Bahamas</asp:ListItem>
                            <asp:ListItem>Bangladesh</asp:ListItem>
                            <asp:ListItem>Barbados</asp:ListItem>
                            <asp:ListItem>Belarus</asp:ListItem>
                            <asp:ListItem>Belgium</asp:ListItem>
                            <asp:ListItem>Belize</asp:ListItem>
                            <asp:ListItem>Benin</asp:ListItem>
                            <asp:ListItem>Bermuda</asp:ListItem>
                            <asp:ListItem>Bhutan</asp:ListItem>
                            <asp:ListItem>Bolivia</asp:ListItem>
                            <asp:ListItem>Bosnia & Herzegovia</asp:ListItem>
                            <asp:ListItem>Botswana</asp:ListItem>
                            <asp:ListItem>Brazil</asp:ListItem>
                            <asp:ListItem>British Indian Ocean Territory</asp:ListItem>
                            <asp:ListItem>British Virgin Islands</asp:ListItem>
                            <asp:ListItem>Brunei</asp:ListItem>
                            <asp:ListItem>Bulgaria</asp:ListItem>
                            <asp:ListItem>Burkina Faso</asp:ListItem>
                            <asp:ListItem>Burundi</asp:ListItem>
                            <asp:ListItem>Cambodia</asp:ListItem>
                            <asp:ListItem>Cameroon</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>Cape Verde</asp:ListItem>
                            <asp:ListItem>Caribbean Netherlands</asp:ListItem>
                            <asp:ListItem>Cayman Islands</asp:ListItem>
                            <asp:ListItem>Central African Republic</asp:ListItem>
                            <asp:ListItem>Chad</asp:ListItem>
                            <asp:ListItem>Chile</asp:ListItem>
                            <asp:ListItem>China</asp:ListItem>
                            <asp:ListItem>Colombia</asp:ListItem>
                            <asp:ListItem>Comoros</asp:ListItem>
                            <asp:ListItem>Congo - Brazzaville</asp:ListItem>
                            <asp:ListItem>Congo - Kinshasa</asp:ListItem>
                            <asp:ListItem>Cook Islands</asp:ListItem>
                            <asp:ListItem>Costa Rica</asp:ListItem>
                            <asp:ListItem>Cote d'Ivoire</asp:ListItem>
                            <asp:ListItem>Croatia</asp:ListItem>
                            <asp:ListItem>Cuba</asp:ListItem>
                            <asp:ListItem>Curacao</asp:ListItem>
                            <asp:ListItem>Cyprus</asp:ListItem>
                            <asp:ListItem>Czechia</asp:ListItem>
                            <asp:ListItem>Denmark</asp:ListItem>
                            <asp:ListItem>Djibouti</asp:ListItem>
                            <asp:ListItem>Dominica</asp:ListItem>
                            <asp:ListItem>Dominican Republic</asp:ListItem>
                            <asp:ListItem>Ecuador</asp:ListItem>
                            <asp:ListItem>Egypt</asp:ListItem>
                            <asp:ListItem>El Salvador</asp:ListItem>
                            <asp:ListItem>Equatorial Guinea</asp:ListItem>
                            <asp:ListItem>Eritrea</asp:ListItem>
                            <asp:ListItem>Estonia</asp:ListItem>
                            <asp:ListItem>Falkland Islands (Islas Malvinas)</asp:ListItem>
                            <asp:ListItem>Faroe Islands</asp:ListItem>
                            <asp:ListItem>Fiji</asp:ListItem>
                            <asp:ListItem>Finland</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                            <asp:ListItem>French Guiana</asp:ListItem>
                            <asp:ListItem>French Polynesia</asp:ListItem>
                            <asp:ListItem>Gabon</asp:ListItem>
                            <asp:ListItem>Gambia</asp:ListItem>
                            <asp:ListItem>Georgia</asp:ListItem>
                            <asp:ListItem>Germany</asp:ListItem>
                            <asp:ListItem>Ghana</asp:ListItem>
                            <asp:ListItem>Gibraltar</asp:ListItem>
                            <asp:ListItem>Greece</asp:ListItem>
                            <asp:ListItem>Greenland</asp:ListItem>
                            <asp:ListItem>Grenada</asp:ListItem>
                            <asp:ListItem>Guadeloupe</asp:ListItem>
                            <asp:ListItem>Guam</asp:ListItem>
                            <asp:ListItem>Guatemala</asp:ListItem>
                            <asp:ListItem>Guinea</asp:ListItem>
                            <asp:ListItem>Guinea-Bissau</asp:ListItem>
                            <asp:ListItem>Guyana</asp:ListItem>
                            <asp:ListItem>Haiti</asp:ListItem>
                            <asp:ListItem>Honduras</asp:ListItem>
                            <asp:ListItem>Hong Kong</asp:ListItem>
                            <asp:ListItem>Hungary</asp:ListItem>
                            <asp:ListItem>Iceland</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>indonesia</asp:ListItem>
                            <asp:ListItem>Iran</asp:ListItem>
                            <asp:ListItem>Iraq</asp:ListItem>
                            <asp:ListItem>Ireland</asp:ListItem>
                            <asp:ListItem>Israel</asp:ListItem>
                            <asp:ListItem>Italy</asp:ListItem>
                            <asp:ListItem>Jamaica</asp:ListItem>
                            <asp:ListItem>Japan</asp:ListItem>
                            <asp:ListItem>Jordan</asp:ListItem>
                            <asp:ListItem>Kazakhstan</asp:ListItem>
                            <asp:ListItem>Kenya</asp:ListItem>
                            <asp:ListItem>Kiribati</asp:ListItem>
                            <asp:ListItem>Kosovo</asp:ListItem>
                            <asp:ListItem>Kuwait</asp:ListItem>
                            <asp:ListItem>Kyrgyzstan</asp:ListItem>
                            <asp:ListItem>Laos</asp:ListItem>
                            <asp:ListItem>Latvia</asp:ListItem>
                            <asp:ListItem>Lebanon</asp:ListItem>
                            <asp:ListItem>Lesotho</asp:ListItem>
                            <asp:ListItem>Liberia</asp:ListItem>
                            <asp:ListItem>Libya</asp:ListItem>
                            <asp:ListItem>Liechtenstein</asp:ListItem>
                            <asp:ListItem>Lithuania</asp:ListItem>
                            <asp:ListItem>Luxembourg</asp:ListItem>
                            <asp:ListItem>Macau</asp:ListItem>
                            <asp:ListItem>Mecedonia (FYROM)</asp:ListItem>
                            <asp:ListItem>Madagascar</asp:ListItem>
                            <asp:ListItem>Malawi</asp:ListItem>
                            <asp:ListItem>Maldives</asp:ListItem>
                            <asp:ListItem>Mali</asp:ListItem>
                            <asp:ListItem>Malta</asp:ListItem>
                            <asp:ListItem>Marshall Islands</asp:ListItem>
                            <asp:ListItem>Martinique</asp:ListItem>
                            <asp:ListItem>Mauritania</asp:ListItem>
                            <asp:ListItem>Mauritius</asp:ListItem>
                            <asp:ListItem>Mexico</asp:ListItem>
                            <asp:ListItem>Micronesia</asp:ListItem>
                            <asp:ListItem>Moldova</asp:ListItem>
                            <asp:ListItem>Monaco</asp:ListItem>
                            <asp:ListItem>Mongolia</asp:ListItem>
                            <asp:ListItem>Montenegro</asp:ListItem>
                            <asp:ListItem>Montserrat</asp:ListItem>
                            <asp:ListItem>Morocco</asp:ListItem>
                            <asp:ListItem>Mozambique</asp:ListItem>
                            <asp:ListItem>Myanmar (Burma)</asp:ListItem>
                            <asp:ListItem>Namibia</asp:ListItem>
                            <asp:ListItem>Nauru</asp:ListItem>
                            <asp:ListItem>Nepal</asp:ListItem>
                            <asp:ListItem>Netherlands</asp:ListItem>
                            <asp:ListItem>New Caledonia</asp:ListItem>
                            <asp:ListItem>New Zealand</asp:ListItem>
                            <asp:ListItem>Nicaragua</asp:ListItem>
                            <asp:ListItem>Niger</asp:ListItem>
                            <asp:ListItem>Nigeria</asp:ListItem>
                            <asp:ListItem>Niue</asp:ListItem>
                            <asp:ListItem>Norfolk Island</asp:ListItem>
                            <asp:ListItem>North Korea</asp:ListItem>
                            <asp:ListItem>Northern Mariana Islands</asp:ListItem>
                            <asp:ListItem>Norway</asp:ListItem>
                            <asp:ListItem>Oman</asp:ListItem>
                            <asp:ListItem>Pakistan</asp:ListItem>
                            <asp:ListItem>Palau</asp:ListItem>
                            <asp:ListItem>Palestine</asp:ListItem>
                            <asp:ListItem>Panama</asp:ListItem>
                            <asp:ListItem>Papua New Guinea</asp:ListItem>
                            <asp:ListItem>Paraguay</asp:ListItem>
                            <asp:ListItem>Peru</asp:ListItem>
                            <asp:ListItem>Philippines</asp:ListItem>
                            <asp:ListItem>Poland</asp:ListItem>
                            <asp:ListItem>Puerto Rico</asp:ListItem>
                            <asp:ListItem>Qatar</asp:ListItem>
                            <asp:ListItem>Réunion</asp:ListItem>
                            <asp:ListItem>Romania</asp:ListItem>
                            <asp:ListItem>Russia</asp:ListItem>
                            <asp:ListItem>Rwanda</asp:ListItem>
                            <asp:ListItem>Samoa</asp:ListItem>
                            <asp:ListItem>San Marino</asp:ListItem>
                            <asp:ListItem>Sao Tomé & Príncipe</asp:ListItem>
                            <asp:ListItem>Saudi Arabia</asp:ListItem>
                            <asp:ListItem>Senegal</asp:ListItem>
                            <asp:ListItem>Serbia</asp:ListItem>
                            <asp:ListItem>Seychelles</asp:ListItem>
                            <asp:ListItem>Sierra Leone</asp:ListItem>
                            <asp:ListItem>Singapore</asp:ListItem>
                            <asp:ListItem>Sint Maarten</asp:ListItem>
                            <asp:ListItem>Slovakia</asp:ListItem>
                            <asp:ListItem>Slovenia</asp:ListItem>
                            <asp:ListItem>Solomon Islands</asp:ListItem>
                            <asp:ListItem>Somalia</asp:ListItem>
                            <asp:ListItem>South Africa</asp:ListItem>
                            <asp:ListItem>South Korea</asp:ListItem>
                            <asp:ListItem>South Sudan</asp:ListItem>
                            <asp:ListItem>Spain</asp:ListItem>
                            <asp:ListItem>Sri Lanka</asp:ListItem>
                            <asp:ListItem>St. Barthélemy</asp:ListItem>
                            <asp:ListItem>St. Helena</asp:ListItem>
                            <asp:ListItem>St. Kitts & Nevis</asp:ListItem>
                            <asp:ListItem>St. Lucia</asp:ListItem>
                            <asp:ListItem>St. Martin</asp:ListItem>
                            <asp:ListItem>St. Pierre & Miquelon</asp:ListItem>
                            <asp:ListItem>St. Vincent & Grenadies</asp:ListItem>
                            <asp:ListItem>Sudan</asp:ListItem>
                            <asp:ListItem>Suriname</asp:ListItem>
                            <asp:ListItem>Swaziland</asp:ListItem>
                            <asp:ListItem>Sweden</asp:ListItem>
                            <asp:ListItem>Switzerland</asp:ListItem>
                            <asp:ListItem>Syria</asp:ListItem>
                            <asp:ListItem>Taiwan</asp:ListItem>
                            <asp:ListItem>Tajikistan</asp:ListItem>
                            <asp:ListItem>Tanzania</asp:ListItem>
                            <asp:ListItem>Thailand</asp:ListItem>
                            <asp:ListItem>Timor-Leste</asp:ListItem>
                            <asp:ListItem>Togo</asp:ListItem>
                            <asp:ListItem>Tokelau</asp:ListItem>
                            <asp:ListItem>Tonga</asp:ListItem>
                            <asp:ListItem>Trinidad & Tobago</asp:ListItem>
                            <asp:ListItem>Tunisia</asp:ListItem>
                            <asp:ListItem>Turkey</asp:ListItem>
                            <asp:ListItem>Turkmenistan</asp:ListItem>
                            <asp:ListItem>Turks & Caicos Islands</asp:ListItem>
                            <asp:ListItem>Tuvalu</asp:ListItem>
                            <asp:ListItem>U.S. Virgin Islands</asp:ListItem>
                            <asp:ListItem>Uganda</asp:ListItem>
                            <asp:ListItem>Ukraine</asp:ListItem>
                            <asp:ListItem>United Arab Emirates</asp:ListItem>
                            <asp:ListItem>United Kingdom</asp:ListItem>
                            <asp:ListItem>United States</asp:ListItem>
                            <asp:ListItem>Uruguay</asp:ListItem>
                            <asp:ListItem>Uzbekistan</asp:ListItem>
                            <asp:ListItem>Vanuatu</asp:ListItem>
                            <asp:ListItem>Vatican City</asp:ListItem>
                            <asp:ListItem>Venezuela</asp:ListItem>
                            <asp:ListItem>Vietnam</asp:ListItem>
                            <asp:ListItem>Wallis & Futuna</asp:ListItem>
                            <asp:ListItem>Yemen</asp:ListItem>
                            <asp:ListItem>Zambia</asp:ListItem>
                            <asp:ListItem>Zimbabwe</asp:ListItem>

                           
                        </asp:DropDownList>
                    </td>
                                </div>
                                 <div class="form-group">
                                    <label style="margin-top:10px;">Lada</label>   
                                       <asp:TextBox ID="TextBox6" runat="server" Enabled="False" class="form-control"  Height="33px" Width="352px"></asp:TextBox>
                                     </div>


                                <div class="form-group">
                                    <label style="margin-top:10px;">Telefono</label>   
                                      <asp:RequiredFieldValidator ID="RFVcellphone" runat="server" ControlToValidate="txtCellphone" ErrorMessage="Telefono requerido" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                     
                   
                                       <asp:TextBox ID="txtCellphone" runat="server" class="form-control" placeholder="Telefono" Height="36px" Width="372px"></asp:TextBox>
                                
                                    </div>


                                


                                <div class="row">
                                    <div class="col-12 col-sm-8 tm-btn-right">
                                       
                                        <asp:Button ID="btnAdd" runat="server" class="btn btn-primary" OnClick="Button1_Click" Text="Registrar" />
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

