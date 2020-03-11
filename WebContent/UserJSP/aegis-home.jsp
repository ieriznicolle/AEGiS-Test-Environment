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
                <a href="index"><img src="assets/images/aegis-banner.JPG" alt="aegis-banner" style="max-height: 90px;"></a>
	        </div>
	<!-- ============================================================== -->
    <!-- End of header  -->
    <!-- ============================================================== -->
    
    <!-- ============================================================== -->
    <!-- Body and Footer  -->
    <!-- ============================================================== -->
	<div class="col-xl-12">    
    <br>
    <h3 align="center">Faculty Management Module</h3>
    <br>
    
    <div class="row">
	    <div class="col-xl-2">
	    	<a href="index"><img src="assets/images/FMM-logo.jpg" alt="FMM LOGO" style="height: 200px; margin: 50px"></a>
	    </div>
	    
	    <div class="col-xl-6">
	    	<form>
			    <table class="table-loginpage">
				    <tr> <th>User Authentication</th> </tr>
				    <tr><td>
				    <div class="row">
				    	<div class="col-xl-2">
					    <a href="index"><img src="assets/images/susi-logo.JPG" alt="susi logo" style="height: 70px;"></a>
					    </div>
					    
					    
				  		
					    <div class="col-xl-2">
					    </div>
			    	</div>
					</td></tr> 
				      
				    <tr><td><h6 style="text-align: center;"> By using this service, you understood and agree to the PUP Online Services <a href="http://www.pup.edu.ph/terms/" target="_blank">Terms of Use</a> and <a href="http://www.pup.edu.ph/privacy/" target="_blank">Privacy Statement</a> </h6>
				    </td></tr>
				    
				    <tr><td>
					    <div align="right">
					    	<input class="form-controlbtn" type="submit" value="Sign-In"> <input class="form-controlbtn" type="reset" value="Clear Entries!"> 
					    </div>
				    </td></tr>
				    
				    <tr><td>
						<h6 style="text-align: left;">Forgot your password?<a href="http://www.instagram.com/kimlherumali" target="_blank"><b> Click here.</b></a><br>
						To SHS Teachers: <a href="http://www.twitter.com/kimlherumali" target="_blank"><b> Click here.</b></a></h6>
				    </td></tr>
		    	</table>
	    	</form>
	    </div>
	    
	    <div class="col-xl-4">
	    	<h6> This module is exclusively for faculty members only. Modules included are:
			    <br><br>
			    <ul>
				    <li>Messaging</li>
				    <li>Faculty Load</li>
				    <li>Profile</li>
				    <li>Grading Sheet</li>
				    <li>Calendar</li>
			    </ul>
	    	</h6>
	    </div>  
     </div>
	 
	<div style="text-align: center;">
	 	<a href="index" align="center"><img src="assets/images/footer.JPG" alt="footer" style="height: 80px; margin: 20px"></a>
	</div>
	</div>    
    <!-- ============================================================== -->
    <!-- End of Body and Footer-->
    <!-- ============================================================== -->
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