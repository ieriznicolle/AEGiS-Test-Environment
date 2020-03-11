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
</head>

<body>
	<div class="dashboard-main-wrapper">
		<!-- ============================================================== -->
		<!-- Header  -->
		<!-- ============================================================== -->
		<div style="text-align: center;">
			<a href="aegis-home"><img src="assets/images/aegis-banner.JPG"
				alt="aegis-banner" style="max-height: 90px;"></a>
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
					<li class="nav-item"><a class="nav-link" href="aegis-home">Message</a></li>
					<li class="nav-item"><a class="nav-link" href="">FacultyLoad</a></li>
					<li class="nav-item"><a class="nav-link" href="">Classlist</a></li>
					<li class="nav-item"><a class="nav-link active">Grading Sheet</a></li>
					<li class="nav-item"><a class="nav-link" href="">Faculty Profile</a></li>
					<li class="nav-item"><a class="nav-link" href="">Calendar</a></li>
					<li class="nav-item"><a class="nav-link" href="">Password</a></li>
					<li class="nav-item"><a class="nav-link" href="">Library</a></li>
				</ul>
			</div>

			<div class="row">
				<div class="col-xl-6">
					<h6 style="margin-left: 6px; margin-top: 10px">
						Welcome, <b>LASTNAME, FIRSTNAME M.I. (EMPLOYEE ID)</b>
					</h6>
				</div>
				<div class="col-xl-6">
					<h6 align="right" style="margin-right: 6px; margin-top: 10px">
						<a href="aegis-login" style="color: red;"><b><u>SIGN OUT</u></b></a>
					</h6>
				</div>
			</div>

			<br>
			<!--End of Top Nav  -->
			<!-- combo boxes -->
			<h3 style="text-align: center;">
				<b>Grading Sheet</b>
			</h3>
			<!-- combo boxes -->

			<h6>
				Department: <select>
					<option value="cpe">Computer Engineering</option>
					<option value="ece">Electronics Engineering</option>
				</select>
			</h6>
			<h6>
				School Year: <select style="margin-left: 1px;">
					<option value="cpe">2019</option>
					<option value="ece">2020</option>
				</select>
			</h6>
			<h6>
				Sem: <select style="margin-left: 40px;">
					<option value="cpe">First</option>
					<option value="ece">Second</option>
				</select>
			</h6>
			<h6 ><input class="form-controlbtn" type="reset" value="Search"></h6>
			<!-- End combo boxes -->
			<!-- Content -->
			<h3 style="color: red; text-align:center;"> "Encoding Of Grades is Not Open." </h3>
			<h6 align="left" ><i class="fas fa-print"></i><u><a>Print Grading Sheet</a></u></h6>
			
			<table class="table-sheet" style="margin:5px;">
			<tr>
			<th style="width: 10%">Section</th>
			<td style="width: 30%">*Section*</td>
			<th style="width: 10%">Subject</th>
			<td style="width: 50%">*Subject*</td>
			</tr>
			<tr>
			<th style="width: 10%">Professor</th>
			<td style="width: 30%">*Professor*</td>
			<th style="width: 10%">Schedule</th>
			<td style="width: 50%">*Schedule*</td>
			</tr>
			</table>
			
			<h5 ><b><i>Instructions: </i><i style="color: red;">Click Review button to check the encoded grades, then click the Finalize button to submit the grades.</i></b></h5>
			<h5 ><b><i>Reminder: </i><i style="color: red;">You can no longer change the grades once you have finalize it.</i></b></h5>
			<h6 ><input class="form-controlbtn" type="reset" value="Review Grading Sheet"></h6>
			
			<table class="table-grade" style="margin-top:10px">
				<tr>
					<th style="width: 5%">#</th>
					<th style="width: 20%">Student No.</th>
					<th style="width: 25%">Name</th>
					<th style="width: 5%">First Grading</th>
					<th style="width: 5%">Second Grading</th>
					<th style="width: 5%">C Rating</th>
					<th style="width: 5%">F Rating</th>
					<th style="width: 10%">Other Remarks</th>
					<th style="width: 10%">Remarks</th>
				</tr>
				
				<tr>
					<td>*#</td>
					<td>*Student No.</td>
					<td>*Name</td>
					<td>
					<select>
					<c:forEach var="grade" items="${grades}">
					<option value="${grade}">${grade}</option>
					</c:forEach>
					</select>
					</td>
					<td>
					<select>
					<c:forEach var="grade" items="${grades}">
					<option value="${grade}">${grade}</option>
					</c:forEach>
					</select>
					</td>
					<td>- not set -</td>
					<td>- not set -</td>
					<td>- not set -</td>
					<td>*Remarks</td>
				</tr>
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