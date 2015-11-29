<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="message" class="error,bodytext"> <c:out value="${requestScope.message}" /></div>
<table width="100%" border="0" cellpadding="0" cellspacing="0"
	bgcolor="#FFFFFF">
	<tbody>
		<tr>
			<td height="26" align="left" background="images/hdr_bg.jpg"
				class="tabletitle">&nbsp;&nbsp;<a href="#" id="item8Tab" onclick="getAjaxCall(null,null,$('#item8Tab a'),'GET','home.action',null,null,null);"><img
					src="images/ic_hom.gif" width="20" height="18" border="0"> </a>&nbsp;<a href="#"
				id="item8Tab" onclick="getAjaxCall(null,null,$('#item8Tab a'),'GET','home.action',null,null,null);" class="hms-menu">home</a> &gt; Patients</td>
		</tr>
		<tr>
			<td><table width="100%" border="0" cellspacing="10"
					cellpadding="0" class="bodytext">
					<tbody>
						<tr>
							<td height="500" align="left" valign="top" class="bodytext">
								<table border="0" cellpadding="6" cellspacing="1"
									bgcolor="#B9DAFF" class="bodytext">
									<thead>
										<tr bgcolor="#DFEEFF" style="font-weight: bold">
											<td>Hospital Number</td>
											<td>First Name</td>
											<td>Last Name</td>
											<td>Date of Birth</td>
											<td>Date of Registration</td>
											<td>Mobile Number</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="patient"
											items="${requestScope.patients}">
											<tr bgcolor="#F4FAFF">
												<td><a href="#"
														onclick="getAjaxCall('patientId=${patient.id }',null,null,'GET','pntRegistration.action','dob','registrationDate',null);">
														${patient.hospitalNumber}</a>
												</td>
												<td>${patient.firstName}</td>
												<td>${patient.lastName}</td>
												<td>${patient.dob}</td>
												<td>${patient.registrationDate}</td>
												<td>${patient.mobileNumber}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table></td>
						</tr>
					</tbody>
				</table></td>
		</tr>
	</tbody>
</table>