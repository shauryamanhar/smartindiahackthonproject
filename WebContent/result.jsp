<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fusioncharts.FusionCharts"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.google.gson.*" %>
<%
String originCity = ""+session.getAttribute("originCity");
String portCity = ""+session.getAttribute("portCity");
String portCityMode = ""+session.getAttribute("portCityMode");
String originPortContainer = ""+session.getAttribute("originPortContainer");
String portDestinationMode = ""+session.getAttribute("portDestinationMode");
String portDestinationContainer = ""+session.getAttribute("portDestinationMode");
String manufacturingFare = ""+session.getAttribute("manufacturingFare");
String productCategory = ""+session.getAttribute("productCategory");
String destinationCity = ""+session.getAttribute("destinationCity");

System.out.println(manufacturingFare);
int i =  Integer.parseInt(manufacturingFare);
double gst= i*0.05;
double total;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <!--Google fonts links-->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">


        <!--For Plugins external css-->
        <link rel="stylesheet" href="assets/css/plugins.css" />
        <link rel="stylesheet" href="assets/css/roboto-webfont.css" />

        <!--Theme custom css -->
        <link rel="stylesheet" href="assets/css/style.css">

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <title>RESULT : Dash board</title>
        <script type="text/javascript" src="js/fusioncharts.js"></script>
	    <script type="text/javascript" src="js/themes/fusioncharts.theme.fint.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Sections -->
        <section id="social" class="social">
            <div class="container">
                <!-- Example row of columns -->
                <div class="row">
                    <div class="social-wrapper">
                        <div class="col-md-6">
                            <div class="social-icon">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-google-plus"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="social-contact">
                                <a href="#"><i class="fa fa-phone"></i>+91 XXXX-XXXX-XX</a>
                                <a href="#"><i class="fa fa-envelope"></i>contact@dockcost.com</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- /container -->       
        </section>

        <nav class="navbar navbar-default">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><img src="assets/images/logo.png" alt="Logo" /></a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="#home">Home</a></li>
                        <li><a href="#service">Service</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>

                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

        <!--Home page style-->
        <header id="home" class="home">
            <div class="overlay-fluid-block">
                <div class="container ">
                    <div class="row">
                        <div class="home-wrapper">
                            <div class="col-md-10 col-md-offset-1">
                                <div class="home-content">
									<div class="well">
					<fieldset><legend>
						<form action="ProductController" method="post">
							<table style="width: 80%">
								<tr>
									<td>
										<br>
										<b style="padding-right: 47px;">COST TO EXPORT INDEX :</b>1.48 
									</td>
									<td>
										<br>
										<%Random rn = new Random();
										int random = 20 + rn.nextInt(30 - 20 + 1);
										%>
										<b style="padding-right: 47px;">TRANSPORTATION FARE :</b><%=total=random*i%> 
									</td>
								</tr>
								<tr>
									<td>
										<br>
										<b style="padding-right: 47px;">GST :</b>
										<%=gst %>
										<%
										
										total=total+gst;
										%> 
									</td>
									<td>
										<br>
										<b style="padding-right: 47px;">CUSTOM DUTY </b> 
										<%= i*0.02%>
										<%
										total=total+i*0.2;
										%>
									</td>
								</tr>	
								<tr>	
									<td>
										<br>
										<b style="padding-right: 47px;">INSURANCE FARE</b><%=i*0.03 %>
										<%
										
										total=total+i*0.03;
										%>  
									</td>
									<td>
										<br>
										<b style="padding-right: 47px;">TOTAL FARE</b><%=total %> 
									</td>
								</tr>
							</table>
						</form>
						</fieldset>


</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>			
            </div>
        </header>
        
        <!-- Sections -->
        <section id="features" class="features sections">
            <div class="container">
                <div class="row">
                </div>
            </div>
        </section><!--End of Features 2 Section -->
        <!-- Sections -->
        
        <!--Footer-->
        <footer id="footer" class="footer">
            <div class="container">
                <div class="row">
                    <div class="footer-wrapper">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="footer-brand">
                                <img src="assets/images/logo.png" alt="logo" />
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="copyright">
                                <!-- <p>Made with <i class="fa fa-heart"></i> by <a target="_blank" href="https://bootstrapthemes.co"> Bootstrap Themes </a>2016. All rights reserved.</p> -->

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </footer>


        <div class="scrollup">
            <a href="#"><i class="fa fa-chevron-up"></i></a>
        </div>


        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>

        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/modernizr.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>