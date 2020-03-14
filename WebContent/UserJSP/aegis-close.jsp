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
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/libs/css/aegis-style.css">
	<link rel="stylesheet" href="assets/vendor/inputmask/css/inputmask.css">
	<link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">

	<%@ taglib prefix = "c"  uri = "http://java.sun.com/jsp/jstl/core" %>
 	<%@ taglib prefix = "sql"  uri = "http://java.sun.com/jsp/jstl/sql" %>
</head>

<body>
<sql:setDataSource
	var="myDS"
	driver="com.mysql.jdbc.Driver"
	url = "jdbc:mysql://127.0.0.1:3306/aegis?user=root&password=password&useSSL=false"
/>

<sql:query var="userslist" dataSource="${myDS}">
	select * from bscoe55;
</sql:query>


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
					<h6 style="margin-left: 6px; margin-top: 10px">
						Welcome, <b>MADRIGALEJOS, DANILO C. (FA1234MN2020)</b>
					</h6>
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
			
			<h3 style="text-align: center;">
				<b>Grading Sheet</b>
			</h3>

					<h6 align="left" style="margin-left: 6px; margin-bottom: 2px;">Department:
						<select id="department" name="department">
							<option value="hs">High School</option>
							<option value="college" selected>College</option>
							<option value="test">Test</option>
						</select>
					</h6>
					
					<h6 align="left" style="margin-left: 6px; margin-bottom: 2px;">School Year:
						<select id="schoolYear" name="schoolYear" style="margin-left: 1px;">
							<option value="1819">1819</option>
							<option value="1920" selected>1920</option>
						</select>
					</h6>
					
					<h6 align="left" style="margin-left: 6px; margin-bottom: 2px;">Sem:
						<select id="semester" name="semester" style="margin-left: 40px;">
							<option value="1">First</option>
							<option value="2" selected>Second</option>
							<option value="S">Summer</option>
						</select>
					</h6>
					
			<h6 align="left" style="margin-left: 6px; margin-bottom: 10px; margin-top: 6px;">
				<input type="submit" value="Search">
			</h6>
			
			<!-- Content -->
			<h3 id="status" style="color: red; text-align:center;"> "Encoding Of Grades is Not Open." </h3>
			<h6 align="left" ><i class="fas fa-print"></i><u><a>Print Grading Sheet</a></u></h6>
			
			<table class="table-sheet" style="margin:5px;">
				<tr align="left">
					<th style="width: 10%; padding:3px;">Section</th><td style="padding:3px;">:</td><td style="width: 30%; padding:3px;">BSCOE 5-5</td>
					<th style="width: 10%; padding:3px;">Subject</th><td style="padding:3px;">:</td><td style="width: 50%; padding:3px;">BSCOE-ELEC3 (BSCOE ELECTIVE 3)</td>
				</tr>
				
				<tr align="left">
					<th style="width: 10%; padding:3px;">Professor</th><td style="padding:3px;">:</td><td style="width: 30%; padding:3px;">MADRIGALEJOS, DANILO C.</td>
					<th style="width: 10%; padding:3px;">Schedule</th><td style="padding:3px;">:</td><td style="width: 50%; padding:3px;">S/S 04:00PM-06:00PM/06:00PM-09:00PM Room No.: CEA314/CEA314</td>
				</tr>
			</table>
			
			<h5><b><i>Instructions: </i><i style="color: red;">Click Review button to check the encoded grades, then click the Finalize button to submit the grades.</i></b></h5>
			<h5><b><i>Reminder: </i><i style="color: red;">You can no longer change the grades once you have finalize it.</i></b></h5>
			
			<h6 align="left" style="margin-left: 6px; margin-bottom: 2px; margin-top: 2px;">
				<input type="submit" value="Review Grading Sheet">
			</h6>
			
			<table class="table-grade" style="margin-top:10px" id="xTable">
				<tr>
					<th style="width: 3%">#</th>
					<th style="width: 15%">Student No.</th>
					<th style="width: 20%">Name</th>
					<th style="width: 10%">First Grading</th>
					<th style="width: 10%">Second Grading</th>
					<th style="width: 5%">C Rating</th>
					<th style="width: 5%">F Rating</th>
					<th style="width: 10%">Other Remarks</th>
					<th style="width: 10%">Remarks</th>
				</tr>
				
				<c:forEach var="student" items="${userslist.rows}">
					<tr>
						<td align="left"><c:out value="${student.num}"/></td>
						<td><c:out value="${student.studnum}"/></td>
						<td align="left"><c:out value="${student.name}"/></td>
						<td><i><c:out value="${student.f_grading}"/></i></td>
						<td><i><c:out value="${student.s_grading}"/></i></td>
						<td><i><c:out value="${student.c_rating}"/></i></td>
						<td><i><c:out value="${student.f_rating}"/></i></td>
						<td><i><c:out value="${student.o_remarks}"/></i></td>
						<td><i><c:out value="${student.f_remarks}"/></i></td>
					</tr>
				</c:forEach>
			</table>
			<!-- End Content -->
			
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