<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="message" class="error,bodytext"> <c:out value="${requestScope.message}" /></div>
<table width="100%" border="0" cellpadding="0" cellspacing="0"
	bgcolor="#FFFFFF">
	<tbody>
		<tr>
			<td height="26" width="60%" align="left"
				background="images/hdr_bg.jpg" class="tabletitle">&nbsp;&nbsp;<a href="#" id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');"><img src="images/ic_hom.gif" width="20"
					height="18" border="0"> </a>&nbsp;<a href="#" id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">home</a> &gt; Doctors List</td>
			<td height="26" width="60%" align="left"
				background="images/hdr_bg.jpg" class="tabletitle"><a
				href="#" id="item6Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','admDoctorForm.action','joiningDate',null,null);">Add Doctor</a></td>
		</tr>
		<tr>
			<td colspan="2"><table width="100%" border="0" cellspacing="10"
					cellpadding="0" class="bodytext">
					<tbody>
						<tr>
							<td height="500" width="100%" align="left" valign="top"
								class="bodytext">
								<table width="100%" border="0" cellpadding="6" cellspacing="1"
									bgcolor="#B9DAFF" class="bodytext">
									<thead>
										<tr bgcolor="#DFEEFF" class="font-bold">
											<td>Name</td>
											<td>Qualification</td>
											<td>Years of Experience</td>
											<td>Consultation Fees</td>
											<td>Experience description</td>
											<td>Joining Date</td>
											<td>Type</td>
											<td>Designation</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="doctor" items="${requestScope.doctors}">
											<tr bgcolor="#F4FAFF">
												<td> <a href="#" onclick="getAjaxCall('id=${doctor.id }',null,null,'GET','admDoctorForm.action','joiningDate',null,null);">${doctor.name}</a>
												</td>
												<td>${doctor.qualification}</td>
												<td>${doctor.yearsOfExperience}</td>
												<td>${doctor.consultationFees}</td>
												<td>${doctor.experienceDescription}</td>
												<td>${doctor.joiningDate}</td>
												<td>${doctor.type}</td>
												<td>${doctor.designation}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</td>
						</tr>
					</tbody>
				</table></td>
		</tr>
	</tbody>
</table>