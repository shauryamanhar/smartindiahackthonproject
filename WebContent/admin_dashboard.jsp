<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fusioncharts.FusionCharts"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.google.gson.*" %>
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
        <title>Dash board:: Admininstrator Page</title>
        
        
        
        <script type="text/javascript" src="js/fusioncharts.js"></script>
	    <script type="text/javascript" src="js/themes/fusioncharts.theme.fint.js"></script>
	    <script type="text/javascript">
    FusionCharts.ready(function(){
    var fusioncharts = new FusionCharts({
    type: 'doughnut3d',
    renderAt: 'chart-container',
    width: '450',
    height: '450',
    dataFormat: 'json',
    dataSource: {
        "chart": {
            "caption": "Export index",
            "subCaption": "Last year",
            "numberPrefix": "$",
            "showBorder": "0",
            "use3DLighting": "0",
            "enableSmartLabels": "0",
            "startingAngle": "310",
            "showLabels": "0",
            "showPercentValues": "1",
            "showLegend": "1",
            "defaultCenterLabel": "Total revenue: 64.08K",
            "centerLabel": "Revenue from label: value",
            "centerLabelBold": "1",
            "showTooltip": "0",
            "decimals": "0",
            "useDataPlotColorForLabels": "1",
            "theme": "fint"
        },
        "data": [{
            "label": "Food",
            "value": "28504"
        }, {
            "label": "Apparels",
            "value": "14633"
        }, {
            "label": "Electronics",
            "value": "10507"
        }, {
            "label": "Household",
            "value": "4910"
        }]
    }
}
);
    fusioncharts.render();
    });
</script>
<script type="text/javascript">
    FusionCharts.ready(function(){
    var fusioncharts = new FusionCharts({
    type: 'multiaxisline',
    renderAt: 'chart-container',
    width: '600',
    height: '350',
    dataFormat: 'json',
    dataSource: {
        "chart": {
            "caption": "Revenue Analysis",
            "subcaption": "Last 12 weeks",
            "xAxisName": "Week of Year",
            "showValues": "0",
            "theme": "fint"
        },
        "categories": [{
            "category": [{
                "label": "1"
            }, {
                "label": "2"
            }, {
                "label": "3"
            }, {
                "label": "4"
            }, {
                "label": "5"
            }, {
                "label": "6"
            }, {
                "label": "7"
            }, {
                "label": "8"
            }, {
                "label": "9"
            }, {
                "label": "10"
            }, {
                "label": "11"
            }, {
                "label": "12"
            }]
        }],
        "axis": [{
            "title": "Revenue",
            "tickWidth": "10",
            "numberPrefix": "$",
            "divlineDashed": "1",
            "dataset": [{
                "seriesname": "Revenue",
                "lineThickness": "3",
                "data": [{
                    "value": "137500"
                }, {
                    "value": "124350"
                }, {
                    "value": "156700"
                }, {
                    "value": "131450"
                }, {
                    "value": "208300"
                }, {
                    "value": "219900"
                }, {
                    "value": "227500"
                }, {
                    "value": "254300"
                }, {
                    "value": "155900"
                }, {
                    "value": "105650"
                }, {
                    "value": "120950"
                }, {
                    "value": "127500"
                }]
            }]
        }, {
            "title": "Orders",
            "axisOnLeft": "0",
            "numDivlines": "8",
            "tickWidth": "10",
            "divlineDashed": "1",
            "dataset": [{
                "seriesname": "Orders",
                "data": [{
                    "value": "22567"
                }, {
                    "value": "21348"
                }, {
                    "value": "24846"
                }, {
                    "value": "19237"
                }, {
                    "value": "20672"
                }, {
                    "value": "23403"
                }, {
                    "value": "30278"
                }, {
                    "value": "26719"
                }, {
                    "value": "21940"
                }, {
                    "value": "24396"
                }, {
                    "value": "22340"
                }, {
                    "value": "25439"
                }]
            }]
        }, {
            "title": "Footfalls",
            "axisOnLeft": "0",
            "numDivlines": "5",
            "tickWidth": "10",
            "numberSuffix": "",
            "divlineDashed": "1",
            "dataset": [{
                "seriesname": "Footfalls",
                "data": [{
                    "value": "68473"
                }, {
                    "value": "57934"
                }, {
                    "value": "78925"
                }, {
                    "value": "69213"
                }, {
                    "value": "74892"
                }, {
                    "value": "81123"
                }, {
                    "value": "90086"
                }, {
                    "value": "91174"
                }, {
                    "value": "68934"
                }, {
                    "value": "80934"
                }, {
                    "value": "73634"
                }, {
                    "value": "84453"
                }]
            }]
        }]
    }
}
);
    fusioncharts.render();
    });
    </script>
    <script type="text/javascript">
    FusionCharts.ready(function(){
    var fusioncharts = new FusionCharts({
    type: 'logmsline',
    renderAt: 'chart3',
    width: '500',
    height: '350',
    dataFormat: 'json',
    dataSource: {
        "chart": {
            "caption": "export  ",
            "subCaption": "Last Year",
            "xAxisName": "Quarter",
            "yAxisName": "USD",
            "paletteColors": "#008ee4,#6baa01,#e44a00",
            "bgAlpha": "0",
            "borderAlpha": "20",
            "canvasBorderAlpha": "0",
            "LegendShadow": "0",
            "legendBorderAlpha": "0",
            "showXAxisLine": "1",
            "showValues": "0",
            "showBorder": "0",
            "showAlternateHgridColor": "0",
            "base": "10",
            "numberprefix": "$",
            "axisLineAlpha": "10",
            "divLineAlpha": "10",
            "toolTipColor": "#ffffff",
            "toolTipBorderThickness": "0",
            "toolTipBgColor": "#000000",
            "toolTipBgAlpha": "80",
            "toolTipBorderRadius": "2",
            "toolTipPadding": "5"
        },
        "categories": [{
            "category": [{
                "label": "Q1"
            }, {
                "label": "Q2"
            }, {
                "label": "Q3"
            }, {
                "label": "Q4"
            }]
        }],
        "dataset": [{
            "seriesname": "Total footfalls",
            "data": [{
                "value": "126734"
            }, {
                "value": "159851"
            }, {
                "value": "197393"
            }, {
                "value": "168560"
            }, {
                "value": "199428"
            }]
        }, {
            "seriesname": "Online Visits",
            "data": [{
                "value": "1126059"
            }, {
                "value": "1292145"
            }, {
                "value": "1496849"
            }, {
                "value": "1460249"
            }, {
                "value": "1083962"
            }]
        }]
    }
}
);
    fusioncharts.render();
    });
</script>
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
                <div class="container text-center">
                    <div class="row">
                        <div class="home-wrapper">
                            <div class="col-md-10 col-md-offset-1">
                                <div class="home-content">

                                    <h1>Get the export cost!</h1>
                                    <p>We will find best and efficient route for you.</p>

                                    <div class="row">
                                        <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12">
                                            <div class="home-contact">
                                                <div class="input-group">
                                                <form action="calculator.jsp">
                                                <input type="submit" class="form-control" value="Calculate">
                                                </form>
                                                    
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
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
                    <div class="main_features_content2">
                        <div class="col-sm-6" style="padding:10px;">
                            <div id="chart"></div>
                        </div>
                        <%
				        FusionCharts area2dChart = new FusionCharts(
				                    "Area2D",// chartType
				                    "myFirstChart",// chartId
				                    "600","400",// chartWidth, chartHeight
				                    "chart",// chartContainer
				                    "json",// dataFormat
				                    "{  \"chart\": {  \"caption\": \"Export \",  \"subCaption\": \"Last week\", \"xAxisName\": \"Day\",  \"yAxisName\": \"Sales (In USD)\",    \"numberPrefix\": \"$\",   \"paletteColors\": \"#0075c2\",  \"bgColor\": \"#ffffff\",    \"showBorder\": \"0\",    \"showCanvasBorder\": \"0\",    \"plotBorderAlpha\": \"10\",    \"usePlotGradientColor\": \"0\",    \"plotFillAlpha\": \"50\",    \"showXAxisLine\": \"1\",    \"axisLineAlpha\": \"25\",    \"divLineAlpha\": \"10\",    \"showValues\": \"1\",    \"showAlternateHGridColor\": \"0\",    \"captionFontSize\": \" 14\",    \"subcaptionFontSize\": \"14\",    \"subcaptionFontBold\": \"0\",    \"toolTipColor\": \"#ffffff\",    \"toolTipBorderThickness\": \"0\",    \"toolTipBgColor\": \"#000000\",    \" toolTipBgAlpha\": \"80\",    \"toolTipBorderRadius\": \"2\",    \"toolTipPadding\": \"5\"                                                },                                                \"data\": [{    \"label\": \" Mon\",    \" value\": \"4123\"                                                }, {    \"label\": \"Tue\",    \"value\": \"  4633\"  }, {    \"label\": \"Wed\",    \"value\": \"5507\"                                                }, {    \"label\": \"Thu\",    \"value\": \"4910\"                                                }, {    \"label\": \"Fri\",    \"value\": \"5529\"                                                }, {    \"label\": \"Sat\",    \"value\": \"5803\"                                                }, {    \"label\": \"Sun\",    \"value\": \"6202\"   }]  }"
				                );
				        
				        %>
				        <%=area2dChart.render()%>
                        <div class="col-sm-6 margin-top-60">
                            <div class="single_features_right ">
                                <h2>DOCK-COST</h2>
                                <p>calculate the cost.</p>
                                <ul>
                                    <li>efficient.</li>
                                    <li>fastest.</li>
                                </ul>
                                <div class="features_buttom">
                                    <a href="" class="btn btn-default">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </disv>
            </div>
        </section><!--End of Features 2 Section -->
        <!-- Sections -->
        
        <!-- Sections -->
        <section id="features" class="features sections">
            <div class="container">
                <div class="row">
                    <div class="main_features_content2">
                        <div class="col-sm-6" style="padding:10px;">
                            <div id="chart-container">FusionCharts XT will load here!</div>
                        </div>
                        <div class="col-sm-6 margin-top-60">
                            	<div id="chart3"></div>
                        </div>
                    </div>
                </disv>
            </div>
        </section><!--End of Features 2 Section -->
        <!-- Sections -->
        
        <%
        	
        %>
        
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