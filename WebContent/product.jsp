<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Abel|Anton|Exo+2|Josefin+Sans|Noto+Sans|Open+Sans|PT+Sans" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 
	<link rel="stylesheet" href="css/main.css">
</head>
<title>Cost estimation form</title>
<style>

td{
 padding-left:100px;
} 

</style>
	 <div class="container container-sm border" style="">
	  <div class="container" >
	  <header class="container announcement-sm" style="text-align: center;">
	  <h1>COST ESTIMATION FORM</h1>
	  </header>
 <hr>
 
<div class="panel-group" id="accordian">
<div class="well">
<fieldset><legend>

						<form action="stuform2.jsp" method="post">
							<table style="width: 80%">
								<tr>
									<td><br><b style="padding-right: 52px;">PRODUCT IS BULK?</b> 
										
									</td>
								</tr>
								<tr>
									<td>
										<br>
										<b style="padding-right: 47px;">ROAD CONTAINER :</b> <select
										style="padding-right: 114px;" name="course"
										class="form-control">
											<option value="-1">select</option>
											<option value="20ST">20 ST</option>
											<option value="40ST">40 ST</option>
											<option value="TRUCK50CBM">TRUCK 50 CBM</option>
											<option value="TRUCK70CBM">TRUCK 70 CBM</option>
											<option value="TRUCK90CBM">TRUCK 90 CBM</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										<br>
										<b style="padding-right: 47px;">RAIL CONTAINER :</b> <select
										style="padding-right: 114px;" name="course"
										class="form-control">
											<option value="-1">select</option>
											<option value="20ST">20 ST</option>
											<option value="40ST">40 ST</option>
											<option value="FREIGHT">FREIGHT</option>
											<option value="TARK">TARK</option>
											<option value="HOPPER">HOPPER</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										<br>
										<b style="padding-right: 47px;">SEA CONTAINER :</b> <select
										style="padding-right: 114px;" name="course"
										class="form-control">
											<option value="-1">select</option>
											<option value="20ST">20 ST</option>
											<option value="40ST">40 ST</option>
											<option value="BULK_20K_DWT">BULK_20K_DWT</option>
											<option value="BULK_40K_DWT">BULK_40K_DWT</option>
											<option value="BULK_70K_DWT">BULK_70K_DWT</option>
										</select>
									</td>
								</tr>
								<tr>
								
									<td>
									<br>
										<input type="submit" value="submit" />
									</td>
								</tr>
							</table>
						</form>
						</fieldset>


</div>
</div>
</div>
</div>