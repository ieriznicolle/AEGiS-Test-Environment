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
			        	<form name="form" action="signedin?signedin=home" method="post">
			                <button type="submit" class="nav-link" value="Message">Message</button>
		     	        </form>
			        </li>
		                 	
			        <li class="nav-item">
		              	<form name="form" action="signedin?signedin=home" method="post">
		              		<button type="submit" class="nav-link" value="Faculty Load">Faculty Load</button>
		      	        </form>
		      	    </li>
		      	            
		         	<li class="nav-item">
		                <form name="form" action="signedin?signedin=home" method="post">
		                	<button type="submit" class="nav-link" value="Classlist">Classlist</button>
		     	        </form>
		     	    </li>
		     	            
		     	    <li class="nav-item">
		                <form name="form" action="signedin?signedin=gradingsheet" method="post">
		                	<button type="submit" class="nav-link active" value="Grading Sheet">Grading Sheet</button>
		     	        </form>
		     	    </li>
		     	            
		     	    <li class="nav-item">
		                <form name="form" action="signedin?signedin=home" method="post">
		                	<button type="submit" class="nav-link" value="Faculty Profile">Faculty Profile</button>
		     	        </form>
		     	    </li>
		     	            
		     	    <li class="nav-item">
		                <form name="form" action="signedin?signedin=home" method="post">
		                	<button type="submit" class="nav-link" value="Calendar">Calendar</button>
		     	        </form>
		     	    </li>
		     	            
		     	    <li class="nav-item">
		                <form name="form" action="signedin?signedin=home" method="post">
		                	<button type="submit" class="nav-link" value="Password">Password</button>
		     	        </form>
		     	    </li>
		     	            
		     	    <li class="nav-item">
		                <form name="form" action="signedin?signedin=home" method="post">
		                	<button type="submit" class="nav-link" value="Library">Library</button>
		     	        </form>
		     	    </li>
		 		</ul>
			</div>
		
			<div class="row">
				<div class="col-xl-6">
					<h6 style="margin-left: 6px; margin-top:10px">Welcome, <b>MADRIGALEJOS, DANILO C. (FA1234MN2020)</b></h6>
				</div>	
				
				<div class="col-xl-6">
					<form name="form" action="signedin?signedin=signout" method="post">
						<h6 align="right" style="margin-right:6px;margin-top:10px">
						<button type="submit" id="signout" style="color:red; border: 0px; background-color: rgba(0, 0, 0, 0);" value="SIGN OUT"><b><u>SIGN OUT</u></b></button></h6>
					</form>
				</div>
			</div>
		
			<br>
			<!--End of Top Nav  -->
		
			<div class="tab-content">
				<div class="tab-pane fade show active" id="sheet" aria-labelledby="sheet-tab">
					<h3 style="text-align:center;"><b>Grading Sheet</b></h3>
				
					<h6 align="left" style="margin-left: 6px; margin-bottom: 2px;">Department:
						<select id="department" name="department">
							<option value="hs">High School</option>
							<option value="college">College</option>
							<option value="test">Test</option>
						</select>
					</h6>
					
					<h6 align="left" style="margin-left: 6px; margin-bottom: 2px;">School Year:
						<select id="schoolYear" name="schoolYear" style="margin-left: 1px;">
							<option value="1819">1819</option>
							<option value="1920">1920</option>
						</select>
					</h6>
					
					<h6 align="left" style="margin-left: 6px; margin-bottom: 2px;">Sem:
						<select id="semester" name="semester" style="margin-left: 40px;">
							<option value="1">First</option>
							<option value="2">Second</option>
							<option value="S">Summer</option>
						</select>
					</h6>
					
					<h6 align="left" style="margin-left: 6px; margin-bottom: 10px; margin-top: 6px;">
						<input type="submit" value="Search">
					</h6>
				
					<!-- Content -->
					<div class="row">
						<div class="col-xl-6">
							<h6 align="left" style="margin-left: 6px;">0/2 posted result(s)</h6>
						</div>
						
						<div class="col-xl-6">
							<h6 align="right" style="margin-right: 6px;">0/2 posted result(s)</h6>
						</div>
					</div>
					
					<table class="table-sheet">
						<tr>
							<th rowspan="2">#</th>
							<th rowspan="2">Section</th>
							<th rowspan="2">Schedule</th>
							<th rowspan="2">Subject Code</th>
							<th rowspan="2">Description</th>
							<th rowspan="2">Faculty</th>
							<th colspan="2">Date Posted</th>
							<th rowspan="2">Date Printed</th>
						</tr>
						<tr>
							<th>First Grading</th>
							<th>Second Grading</th>
						</tr>
					
						<tr>
							<td>1</td>
							<td>
								<form name="form" action="signedin?signedin=BSCOE54" method="post">
				                	<button type="submit" id="BSCOE" style="border: 0px; background-color: rgba(0, 0, 0, 0);" value="BSCOE 5-4"><u>BSCOE 5-4</u></button>
				     	        </form>
							</td>
							<td>S | 4:00PM-9:00PM | Room#CEA314</td>
							<td>BSCOE-ELEC3</td>
							<td>Elective 3</td>
							<td>MADRIGALEJOS, DANILO C.</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					
						<tr>
							<td>2</td>
							<td>
								<form name="form" action="signedin?signedin=BSCOE55" method="post">
				                	<button type="submit" id="BSCOE" style="border: 0px; background-color: rgba(0, 0, 0, 0);" value="BSCOE 5-5"><u>BSCOE 5-5</u></button>
				     	        </form>
							</td>
							<td>S | 1:30PM-3:00PM | Room#CEA314</td>
							<td>BSCOE-ELEC3</td>
							<td>Elective 3</td>
							<td>MADRIGALEJOS, DANILO C.</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</table>
					
					<div class="row">
						<div class="col-xl-6">
							<h6 align="left" style="margin-left: 6px;">0/2 posted result(s)</h6>
						</div>
						
						<div class="col-xl-6">
							<h6 align="right" style="margin-right: 6px;">0/2 posted result(s)</h6>
						</div>
					</div>
					
				<!-- End Content -->
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