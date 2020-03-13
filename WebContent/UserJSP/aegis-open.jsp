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
	url = "jdbc:mysql://127.0.0.1:3306/aegis?user=root&password=$carletWitch12&useSSL=false"
/>

<sql:query var="userslist" dataSource="${myDS}">
	select * from bscoe54;
</sql:query>

<sql:query var="gradeslist" dataSource="${myDS}">
	select * from grades;
</sql:query>

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
				<select>
					<option value="cpe">Computer Engineering</option>
				</select>
			</h6>
			
			<h6 align="left" style="margin-left: 6px; margin-bottom: 2px;">School Year:
				<select style="margin-left: 1px;">
					<option value="cpe">1920</option>
				</select>
			</h6>
					
			<h6 align="left" style="margin-left: 6px; margin-bottom: 2px;">Sem:
				<select style="margin-left: 40px;">
					<option value="cpe">Second</option>
				</select>
			</h6>
					
			<h6 align="left" style="margin-left: 6px; margin-bottom: 10px; margin-top: 6px;">
				<input type="submit" value="Search">
			</h6>
					
			<!-- Content -->
			<h3 style="color: red; text-align:center;"> "Encoding Of Grades is Open." </h3>
			<h6 align="left" ><i class="fas fa-print"></i><u><a>Print Grading Sheet</a></u></h6>
			
			<table class="table-sheet" style="margin:5px;">
				<tr align="left">
					<th style="width: 10%; padding:3px;">Section</th><td style="padding:3px;">:</td><td style="width: 30%; padding:3px;">BSCOE 5-4</td>
					<th style="width: 10%; padding:3px;">Subject</th><td style="padding:3px;">:</td><td style="width: 50%; padding:3px;">BSCOE-ELEC3 (BSCOE ELECTIVE 3)</td>
				</tr>
				
				<tr align="left">
					<th style="width: 10%; padding:3px;">Professor</th><td style="padding:3px;">:</td><td style="width: 30%; padding:3px;">MADRIGALEJOS, DANILO C.</td>
					<th style="width: 10%; padding:3px;">Schedule</th><td style="padding:3px;">:</td><td style="width: 50%; padding:3px;">S/S 04:00PM-06:00PM/06:00PM-09:00PM Room No.: CEA314/CEA314</td>
				</tr>
			</table>
				
			<h5 ><b><i>Instructions: </i><i style="color: red;">Click Review button to check the encoded grades, then click the Finalize button to submit the grades.</i></b></h5>
			<h5 ><b><i>Reminder: </i><i style="color: red;">You can no longer change the grades once you have finalize it.</i></b></h5>
			
			<h6 align="left" style="margin-left: 6px; margin-bottom: 2px; margin-top: 2px;">
				<input type="submit" value="Review Grading Sheet">
			</h6>
				
			<form name="form" action="encode" method="post">
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
							<td><i>
								<select name="f_grading" class="f_grading">
									<option value="${student.f_grading}" selected><c:out value="${student.f_grading}"/></option>
									
									<c:forEach var="gr" items="${gradeslist.rows}">
										<option value="${gr.grade}"><c:out value="${gr.grade}"/></option>
									</c:forEach>
								</select>
							</i></td>
							<td><i>
								<select name="s_grading" class="s_grading">
									<option value="${student.s_grading}" selected><c:out value="${student.s_grading}"/></option>
									
									<c:forEach var="gr" items="${gradeslist.rows}">
										<option value="${gr.grade}"><c:out value="${gr.grade}"/></option>
									</c:forEach>
								</select>
							</i></td>
							<td class="cc_rating"><i><c:out value="${student.c_rating}"/></i></td>
							<td class="ff_rating"><i><c:out value="${student.f_rating}"/></i></td>
							<td class="oo_remarks"><i><c:out value="${student.o_remarks}"/></i></td>
							<td class="ff_remarks"><i><c:out value="${student.f_remarks}"/></i></td>
						</tr>
						
						<input type="hidden" class="c_rating" name="c_rating" value="${student.c_rating}"/>
						<input type="hidden" class="f_rating" name="f_rating" value="${student.f_rating}"/>
						<input type="hidden" class="o_remarks" name="o_remarks" value="${student.o_remarks}"/>
						<input type="hidden" class="f_remarks" name="f_remarks" value="${student.f_remarks}"/>
					</c:forEach>
				</table>
			
			<input type="hidden" id="length" name="length" value="1"/>
			<input type="submit" style="align:center;" value="Save"/>
			</form>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		
	<script>
		$('#xTable select').on('change', function(e) {
		  var data = $(this).val();
		  console.log(data);
		  console.log(this);
		  
		  run();
		});
		
		function run() {
			var fg = document.getElementsByClassName("f_grading");
			var sg = document.getElementsByClassName("s_grading");
			
			var crtg = document.getElementsByClassName("c_rating");
			var frtg = document.getElementsByClassName("f_rating");
			var ormk = document.getElementsByClassName("o_remarks");
			var frmk = document.getElementsByClassName("f_remarks");
			
			var ccrtg = document.getElementsByClassName("cc_rating");
			var ffrtg = document.getElementsByClassName("ff_rating");
			var oormk = document.getElementsByClassName("oo_remarks");
			var ffrmk = document.getElementsByClassName("ff_remarks");		
			
			document.getElementById("length").value = fg.length;
			/* 
			alert(fg.length);
			 */
			var i;
			
			for (i = 0; i < fg.length; i++) {
				fg[i].setAttribute("name", "f_grading"+i);
				sg[i].setAttribute("name", "s_grading"+i);
				crtg[i].setAttribute("name", "c_rating"+i);
				frtg[i].setAttribute("name", "f_rating"+i);
				ormk[i].setAttribute("name", "o_remarks"+i);
				frmk[i].setAttribute("name", "f_remarks"+i);
				
				if (fg[i].value == 'W' || sg[i].value == 'W') {
					fg[i].value = "W";
					sg[i].value = "W";
					crtg[i].value = "W";
					frtg[i].value = "W";
					ormk[i].value = "W";
					frmk[i].value = "WITHDRAW";
					
					document.getElementsByClassName("cc_rating")[i].innerHTML = "W";
					document.getElementsByClassName("ff_rating")[i].innerHTML = "W";
					document.getElementsByClassName("oo_remarks")[i].innerHTML = "W";
					document.getElementsByClassName("ff_remarks")[i].innerHTML = "WITHDRAW";
				}
				
				else if (fg[i].value == 'D' || sg[i].value == 'D') {
					fg[i].value = "D";
					sg[i].value = "D";
					crtg[i].value = "D";
					frtg[i].value = "D";
					ormk[i].value = "D";
					frmk[i].value = "DROPPED";
					
					document.getElementsByClassName("cc_rating")[i].innerHTML = "D";
					document.getElementsByClassName("ff_rating")[i].innerHTML = "D";
					document.getElementsByClassName("oo_remarks")[i].innerHTML = "D";
					document.getElementsByClassName("ff_remarks")[i].innerHTML = "DROPPED";
				}
				
				else if (fg[i].value == 'INC' || sg[i].value == 'INC') {
					fg[i].value = "INC";
					sg[i].value = "INC";
					crtg[i].value = "INC";
					frtg[i].value = "INC";
					ormk[i].value = "INC";
					frmk[i].value = "INCOMPLETE";
					
					document.getElementsByClassName("cc_rating")[i].innerHTML = "INC";
					document.getElementsByClassName("ff_rating")[i].innerHTML = "INC";
					document.getElementsByClassName("oo_remarks")[i].innerHTML = "INC";
					document.getElementsByClassName("ff_remarks")[i].innerHTML = "INCOMPLETE";
				}
				
				else if (fg[i].value == '- not set -' && sg[i].value == '- not set -') {
					crtg[i].value = "- not set -";
					frtg[i].value = "- not set -";
					ormk[i].value = "- not set -";
					frmk[i].value = " ";
					
					document.getElementsByClassName("cc_rating")[i].innerHTML = "- not set -";
					document.getElementsByClassName("ff_rating")[i].innerHTML = "- not set -";
					document.getElementsByClassName("oo_remarks")[i].innerHTML = "- not set -";
					document.getElementsByClassName("ff_remarks")[i].innerHTML = " ";
				}
				
				else {
					crtg[i].value = parseFloat(fg[i].value);
					frtg[i].value = parseFloat(sg[i].value);
					ormk[i].value = (parseFloat(fg[i].value) + parseFloat(sg[i].value)) /2;
					
					if (ormk[i].value == 'NaN') {
						ormk[i].value = "F";
					}
					
					if (ormk[i].value >= 1.0 && ormk[i].value <= 3.0) {
						frmk[i].value = "PASSED";
					}
						
					else {
						frmk[i].value = "FAILED";
					}
						
					document.getElementsByClassName("cc_rating")[i].innerHTML = fg[i].value;
					document.getElementsByClassName("ff_rating")[i].innerHTML = sg[i].value;
					document.getElementsByClassName("oo_remarks")[i].innerHTML = ormk[i].value;
					document.getElementsByClassName("ff_remarks")[i].innerHTML = frmk[i].value;	
				}
			}
		}
	</script>
	
	<!-- ============================================================== -->
	<!-- End of Scripts-->
	<!-- ============================================================== -->
</body>
</html>