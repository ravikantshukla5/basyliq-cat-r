<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="message" class="error,bodytext"> <c:out value="${requestScope.message}" /> </div>
<table width="100%" border="0" cellpadding="0" cellspacing="0"
	bgcolor="#FFFFFF">
	<tbody>
		<tr>
			<td height="26" width="40%" align="left"
				background="images/hdr_bg.jpg" class="tabletitle">&nbsp;&nbsp;<a
				href="#" id="item6Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');"><img src="images/ic_hom.gif" width="20"
					height="18" border="0"> </a>&nbsp;<a href="#" id="item6Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">home</a> &gt;Therapies List</td>
			<td height="26" width="60%" align="left"
				background="images/hdr_bg.jpg" class="tabletitle"><a id="item6Tab"
				href="#" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','admTherapyForm.action','endDate','startDate',null);">Add Therapy</a></td>
		</tr>
		<tr>
			<td colspan="2"><table width="100%" border="0" cellspacing="10"
					cellpadding="0" class="bodytext">
					<tbody>
						<tr>
							<td height="500" align="left" valign="top"
								class="bodytext">
								<table width="100%" border="0" cellpadding="6" cellspacing="1"
									bgcolor="#B9DAFF" class="bodytext">
									<thead>
										<tr bgcolor="#DFEEFF" style="font-weight: bold">
											<td>Name</td>
											<td>Description</td>
											<td>Rate</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="therapy" items="${requestScope.therapies}">
											<tr bgcolor="#F4FAFF">
												<td> <a href='#' onclick="getAjaxCall('id=${therapy.id }',null,null,'GET','admTherapyForm.action','endDate','startDate',null);">${therapy.name}</a>
												</td>
												<td>${therapy.description}</td>
												<td>${therapy.rate}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>