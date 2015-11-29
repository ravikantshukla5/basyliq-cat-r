<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="message" class="error,bodytext"> <c:out value="${requestScope.message}" /></div>
<table width="100%" border="0" cellpadding="0" cellspacing="0"
	bgcolor="#FFFFFF">
	<tbody>
		<tr>
			<td height="26" align="left" background="images/hdr_bg.jpg"
				class="tabletitle">&nbsp;&nbsp;<a href="#" id="item6Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');"><img
					src="images/ic_hom.gif" width="20" height="18" border="0"> </a>&nbsp;<a id="item6Tab"
				href="#" class="btnlink" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">home</a> &gt; Billing</td>
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
										<tr bgcolor="#DFEEFF" class="font-bold">
											<td>Patient Number</td>
											<td>Bill Number</td>
											<td>Bill Date</td>
											<td>Visit Date</td>
											<td>Category</td>
											<td>Visit Type</td>
											<td>Payment Mode</td>
											<td>Total Amount</td>
											<td>Discounted Amount</td>
											<td>Bill Amount</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="billing"
											items="${requestScope.billings}">
											<tr bgcolor="#F4FAFF">
												<td>${billing.visit.patient.hospitalNumber }</td>
												<td><a href='#' onclick="getAjaxCall('id=${billing.id }',null,null,'GET','blgBillingFormToPrint.action',null,null,null);">${billing.billNumber }</a></td>
												<td>${billing.billDate}</td>
												<td>${billing.visit.visitDate}</td>
												<td>${billing.visit.category}</td>
												<td>${billing.visit.visitType}</td>
												<td>${billing.paymentMode}</td>
												<td>${billing.visit.totalAmount}</td>
												<td>${billing.visit.discountedAmount}</td>
												<td>${billing.billAmount}</td>
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