<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="billingForm">
    <div id="message" class="error,bodytext" > <c:out
										value="${requestScope.message}" /></div>
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bgcolor="#FFFFFF">
		<tbody>
			<tr>
				<td height="26" align="left" background="images/hdr_bg.jpg"
					class="tabletitle">&nbsp;&nbsp;<a href="#" id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');"><img
						src="images/ic_hom.gif" width="20" height="18" border="0"> </a><a
					href="#" id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">home</a> &gt; Billing Form
				</td>
			</tr>
			<tr>
				<td><form:form name="billingForm"
						action="blgBillingForm.action" method="post" commandName="billing">
						<form:hidden path="id" id="id" />
						<form:hidden path="visit.id" id="visitId" />
						<div id="visitDetails">
							<table width="100%" border="0" cellpadding="0" class="bodytext">
								<tbody>
									<tr>
										<td width="25%" align="left">Hospital Number :</td>
										<td width="25%" align="left">${requestScope.billing.visit.patient.hospitalNumber
											}</td>
										<td width="25%" align="left">Patient Name :</td>
										<td width="25%" align="left">${requestScope.billing.visit.patient.firstName}&nbsp;${requestScope.billing.visit.patient.lastName}</td>
									</tr>
									<tr>
										<td width="25%" align="left">Visit Date :</td>
										<td width="25%" align="left">${requestScope.billing.visit.visitDate}</td>
										<td width="25%" align="left">Billing Date :</td>
										<td width="25%" align="left">${requestScope.billing.billDate}</td>
									</tr>
									<tr>
										<td width="25%" align="left">Total Amount :</td>
										<td width="25%" align="left">${requestScope.billing.visit.totalAmount}</td>
										<td width="25%" align="left">Discounted Amount :</td>
										<c:if
											test="${requestScope.billing.visit.discountedAmount == requestScope.billing.visit.totalAmount}">
											<td width="25%" align="left"></td>
										</c:if>
										<c:if
											test="${requestScope.billing.visit.discountedAmount != requestScope.billing.visit.totalAmount}">
											<td width="25%" align="left">${requestScope.billing.visit.discountedAmount}</td>
										</c:if>
									</tr>
									<tr>
										<td width="25%" align="left">Amount already Paid:</td>
										<td width="25%" align="left">${requestScope.billing.visit.amountPaid}</td>
										<td width="25%" align="left">Amount to Pay:</td>
										<td width="25%" align="left"><c:out
												value="${requestScope.billing.visit.discountedAmount - requestScope.billing.visit.amountPaid}"></c:out>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr />
						<div id="serviceDetails">
							<b>Details of Services Availed</b><br />
							<table width="100%" border="0" cellpadding="6" cellspacing="1"
								bgcolor="#B9DAFF" class="bodytext">
								<thead>
									<tr bgcolor="#DFEEFF" class="font-bold">
										<td>Description</td>
										<td>Service Type</td>
										<td>Standard Rate</td>
										<td>Actual Rate</td>
										<td>Quantity</td>
										<td>Amount</td>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="service"
										items="${requestScope.billing.visit.servicesAvailed}">
										<tr bgcolor="#F4FAFF">
											<td>${service.description}</td>
											<td>${service.type}</td>
											<td>${service.standardRate}</td>
											<td>${service.actualRate}</td>
											<td>${service.quantity}</td>
											<td>${service.amount}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<br/>
						<div id="paymentDetails">
							<b>Details of Payment </b><br />
							<table width="100%" border="0" cellpadding="6" cellspacing="1"
								bgcolor="#B9DAFF" class="bodytext">
								<thead>
									<tr bgcolor="#DFEEFF" class="font-bold">
										<td width="25%">Receipt No</td>
										<td width="25%">Receipt Date</td>
										<td width="25%">Payment Mode</td>
										<td width="25%">Bill Amount</td>
									</tr>
								</thead>
								<tbody>
									<tr bgcolor="#F4FAFF">
										<td>${requestScope.billing.billNumber}</td>
										<td>${requestScope.billing.billDate}</td>
										<td>${requestScope.billing.paymentMode}</td>
										<td>${requestScope.billing.billAmount}</td>
									</tr>
								</tbody>
							</table>
						</div>
						<br />

						<input type="button" value="Print Receipt" name="btn_print"
							id="btn_print" onclick="printReceipt()"/>
						<input type="button" value="Close" name="btn_cancel"
							id="btn_cancel"
							onclick="getAjaxCall('id=${requestScope.billing.visit.id}',null,null,'GET','vstVisitForm.action',null,null,null);">
					</form:form></td>
			</tr>
		</tbody>
	</table>
</div>