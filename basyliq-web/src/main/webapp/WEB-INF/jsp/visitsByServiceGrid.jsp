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
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">home</a> &gt; <a
				href="#" id="item2Tab" onclick="getAjaxCall(null,null,$('#item2Tab a'),'GET','vstSearchVisitByService.action','visitFromDate','visitToDate',null);">Search Patient Visits By
					Service</a> &gt;Search Results
			</td>
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
											<td>Visit Date</td>
											<td>Service Description</td>
											<td>Category</td>
											<td>Patient Name</td>
											<td>Visit Type</td>
											<td>Rate</td>
											<td>Quantity</td>
											<td>Amount</td>
											<td>Bill Number</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="entry"
											items="${requestScope.visitServiceGroup}">
											<c:forEach var="visit" items="${entry.value}">
												<tr bgcolor="#F4FAFF">
													<td> <a href='#' onclick="getAjaxCall('id=${visit.visitId }',null,null,'GET','vstVisitForm.action','visitDate',null,null);">${visit.visitDate}</a>
													</td>
													<td>${visit.serviceDescription}</td>
													<td>${visit.category}</td>
													<td>${visit.patientName}</td>
													<td>${visit.visitType}</td>
													<td>${visit.actualRate}</td>
													<td>${visit.quantity}</td>
													<td>${visit.amount}</td>
													<td><a href='#' onclick="getAjaxCall('id=${visit.billingId }',null,null,'GET','blgBillingFormToPrint.action',null,null,null);">${visit.billNumber}</a></td>
												</tr>
											</c:forEach>
											<tr>
												<td colspan="6" align="right">Total Amount:</td>
												<td><c:out
														value="${requestScope.serviceAmountSum[entry.key]}" /></td>
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