<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="message" class="error,bodytext"> <c:out value="${requestScope.message}" /></div>
<table width="100%" border="0" cellpadding="0" cellspacing="0"
	bgcolor="#FFFFFF">
	<tbody>
		<tr>
			<td height="26" align="left" background="images/hdr_bg.jpg"
				class="tabletitle">&nbsp;&nbsp;<a href="#" id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');"><img
					src="images/ic_hom.gif" width="20" height="18" border="0"> </a>&nbsp;<a
				href="#" id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">home</a> &gt; Visits</td>
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
											<td>Patient Number</td>
											<td>Visit Date</td>
											<td>Category</td>
											<td>Visit Type</td>
											<td>Total Amount</td>
											<td>Discounted Amount</td>
											<td>Amount Paid</td>
											<td>Payment Status</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="visit"
											items="${requestScope.visits}">
											<tr bgcolor="#F4FAFF">
												<td><a href='#' onclick="getAjaxCall('id=${visit.id }',null,null,'GET','vstVisitForm.action','visitDate',null,null);">${visit.patient.hospitalNumber}</a>
												</td>
												<td>${visit.visitDate}</td>
												<td>${visit.category}</td>
												<td>${visit.visitType}</td>
												<td>${visit.totalAmount}</td>
												<td>${visit.discountedAmount}</td>
												<td>${visit.amountPaid}</td>
												<td>${visit.paymentStatus}</td>
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