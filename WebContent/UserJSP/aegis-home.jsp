<!-- LOGIN REGISTER -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
//	response.setHeader("Cache-Control", "no-cache, no-store, must revalidate");	
//	if (session.getAttribute("faculty")!= null && session.getAttribute("empId") != null){
//		response.sendRedirect(request.getContextPath() + "/u/home");	
//	
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>SIS for Faculty (Test Environment)</title>
		
		<!-- Required meta tags -->
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    
	    <!-- Bootstrap CSS -->
	    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
	    <link rel="stylesheet" href="assets/libs/css/aegis-style.css">
	    <link rel="stylesheet" href="assets/vendor/inputmask/css/inputmask.css">
	</head>
	
	<body>
    <div class="dashboard-main-wrapper">
	<!-- ============================================================== -->
    <!-- Header  -->
    <!-- ============================================================== -->    
           <div style="text-align: center;">
                <a href="aegis-home"><img src="assets/images/aegis-banner.JPG" alt="aegis-banner" style="max-height: 90px;"></a>
	        </div>
	<!-- ============================================================== -->
    <!-- End of header  -->
    <!-- ============================================================== -->
    
    <!-- ============================================================== -->
    <!-- Body and Footer  -->
    <!-- ============================================================== -->
	<div class="col-xl-12">   
	 <!-- Top Nav  -->
		<div class="tab-regular" style="margin-left: 6px;">
	    			 <ul class="nav nav-tabs">
	               		<li class="nav-item">
	                    	<a class="nav-link active" id="message-tab" data-toggle="tab" href="#message" aria-controls="message" aria-selected="true">Message</a>
	                 	</li>
		                <li class="nav-item">
	              			<a class="nav-link"  href="">Faculty Load</a>
	      	            </li>
	         	        <li class="nav-item">
	                		<a class="nav-link"  href="">Classlist</a>
	     	            </li>
	     	            <li class="nav-item">
	                		<a class="nav-link" id="sheet-tab" data-toggle="tab" href="#sheet" aria-controls="sheet" aria-selected="false">Grading Sheet</a>
	     	            </li>
	     	            <li class="nav-item">
	                		<a class="nav-link"  href="">Faculty Profile</a>
	     	            </li>
	     	            <li class="nav-item">
	                		<a class="nav-link"  href="">Calendar</a>
	     	            </li>
	     	            <li class="nav-item">
	                		<a class="nav-link"  href="">Password</a>
	     	            </li>
	     	            <li class="nav-item">
	                		<a class="nav-link"  href="">Library</a>
	     	            </li>
	 				</ul>
		</div>
		
		<div class="row">
			<div class="col-xl-6">
				<h6 style="margin-left: 6px; margin-top:10px">Welcome, <b>LASTNAME, FIRSTNAME M.I. (EMPLOYEE ID)</b></h6>
			</div>	
			<div class="col-xl-6">
				<h6 align="right" style="margin-right:6px;margin-top:10px"><a href="aegis-login" style="color:red;"><b><u>SIGN OUT</u></b></a></h6>
			</div>
		</div>
		
		<br>
		<!--End of Top Nav  -->
		<div class="tab-content">
		
			<div class="tab-pane fade show active" id="message" aria-labelledby="message-tab">
				<h2 style="color: red; text-align:center;"> You have no messages to display. </h2>
				<h6 style="color: red; text-align:center;">Sir, ipasa mo po kami. Hehe thank you po!</h6>
			</div>
			<div class="tab-pane fade" id="sheet" aria-labelledby="sheet-tab">
				kimlhergeroge
			</div>
		</div>
	
    
	</div>   
	<!-- ============================================================== -->
    <!-- End of Body -->
    <!-- ============================================================== -->
	<div style="text-align: center;">
	 	<a href="aegis-home" align="center"><img src="assets/images/footer.JPG" alt="footer" style="height: 80px; margin: 20px"></a>
	</div>
	</div>    
    </div>
    
    <!-- ============================================================== -->
    <!-- Scripts-->
    <!-- ============================================================== -->
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="assets/vendor/inputmask/js/jquery.inputmask.bundle.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="assets/libs/js/main-js.js"></script>
    <!-- ============================================================== -->
    <!-- End of Scripts-->
    <!-- ============================================================== -->
</body>
</html>