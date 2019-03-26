<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pageMenuCabanias.aspx.cs" Inherits="bonita_mazamitla.pageAllCabanias" %>

<!DOCTYPE HTML>
<!--
	Story by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Menu</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	    <style type="text/css">
            .auto-style1 {
                left: 0;
                top: 0;
            }
        </style>
	</head>
	<body>
      <form id="form1" runat="server">
    
		<!-- Wrapper -->
			<div id="wrapper" class="divided">

				<!-- One -->
					<section class="banner style1 orient-left content-align-left image-position-right fullscreen onload-image-fade-in onload-content-fade-right" style="left: 0px; top: 0px">
						<div class="content">
							<h1>Cabaña Matilda</h1>
							<p class="major"><!--[-->Hermosa Cabañita con una vista excepcional. Cuenta con 2 habitaciones y 1 Tapanco. En las habitaciones hay 1 cama King Size, 2 Literas y en el Tapanco encontrarás 3 colchones.
                                                        Cuenta con todo lo necesario para cocinar, asi como lo indispendable para hacer un excelente asado en el campo.</p>
							<ul class="actions vertical">
                                <asp:Button ID="btnMatilda" runat="server" Text="Reservar" OnClick="btn1_Click" />
							</ul>
						</div>
						<div class="image">
							<img src="images/1.PNG" alt="" class="auto-style1" />
						</div>
					</section>

				<!-- Two -->
					<section class="spotlight style1 orient-right content-align-left image-position-center onscroll-image-fade-in" id="first">
						<div class="content">
							<h2>Cabaña Inspiracion</h2>
							<p>Cuenta con 2 recamaras completamente amuebladas, un baño completo, cocina completa y terraza balcón. Cuenta con chimenea, pantalla plana y reproductor de DVD.
En las recamaras tenemos una cama King size y en la otra dos camas individuales, en la sala hay un sofá-cama y un camastro,  por lo que caben cómodamente 7 personas en esta agradable cabaña.</p>
							<ul class="actions vertical">
								
							
                                <asp:Button ID="btnInspiracion" runat="server" Text="Reservar" OnClick="btnInspiracion_Click" />
							</ul>
						</div>
						<div class="image">
							<img src="images/2.PNG" alt="" />
						</div>
					</section>

				<!-- Three -->
					<section class="spotlight style1 orient-left content-align-left image-position-center onscroll-image-fade-in">
						<div class="content">
							<h2>Cabaña Anastasia</h2>
							<p>Cuenta con dos recamaras completamente amuebladas, un baño completo, cocina completa, comedor,  y terraza. Cuenta con chimenea, pantalla plana y reproductor de DVD.
En las recamaras tenemos una cama kingsize y en la otra tenemos dos camas individuales por lo que en ella caben cómodamente cuatro personas</p>
							<ul class="actions vertical">
								<asp:Button ID="bntAnastacia" runat="server" Text="Reservar" OnClick="bntAnastacia_Click" />
							</ul>
						</div>
						<div class="image">
							<img src="images/3.PNG" alt="" />
						</div>
					</section>

				<!-- Four -->
					<section class="spotlight style1 orient-right content-align-left image-position-center onscroll-image-fade-in">
						<div class="content">
							<h2>Cabaña Rafaela</h2>
							<p>Cuenta con 3 recamaras completamente amuebladas,  dos baños completos, sala, cocina y  terraza. Cuenta con chimenea, pantalla plana y reproductor de DVD.

Para la comodidad de nuestros visitantes tenemos:  una cama Kingsize,  una matrimonial, dos individuales y un camastro, por lo que aquí podemos albergar a 7 personas tranquilamente .</p>
							<ul class="actions vertical">
								<asp:Button ID="btnRafela" runat="server" Text="Reservar" OnClick="btnRafela_Click" />
							</ul>
						</div>
						<div class="image">
							<img src="images/4.PNG" alt="" />
						</div>
					</section>
                  <!-- Five-->
					<section class="spotlight style1 orient-left content-align-left image-position-center onscroll-image-fade-in">
						<div class="content">
							<h2>Cabaña Isadora</h2>
							<p>Cuenta con tres recamaras, dos baños completos, terraza, comedor, cocina, sala, antesala, y tapanco. Cuenta con chimenea, pantalla plana y reproductor de DVD.
Para la estadía de nuestros huéspedes contamos en esta cabaña con: una cama King size, dos matrimoniales, dos individuales,  dos sofá cama, y cuatro camastros.
En ella pueden pernoctar de 12 a 15 personas  cómodamente</p>
							<ul class="actions vertical">
								<asp:Button ID="btnIsadora" runat="server" OnClick="Button5_Click" Text="Reservar" />
							</ul>
						</div>
						<div class="image">
							<img src="images/5.PNG" alt="" />
						</div>
					</section>
				
				

				

				<!-- Footer -->
					<footer class="wrapper style1 align-center">
						<div class="inner">
							<ul class="icons">
								<li><a href="https://twitter.com/MazamitlaBonita" class="icon style2 fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="https://www.facebook.com/La-Bonita-Mazamitla-208064466059640/" class="icon style2 fa-facebook"><span class="label">Facebook</span></a></li>
								
								
							</ul>
							
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
      </form>
	</body>
</html>