<%@page import="com.socgen.poc.entity.Billing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="billingForm">
    <div id="message" class="error,bodytext"> <c:out value="${requestScope.message}" /></div>
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
				<td><form:form name="billingForm" id="billingFormId"
						 onsubmit="postAjaxCall(this,'POST','blgBillingForm.action','billDate',null,null);return false;" method="post" commandName="billing">
						<form:hidden path="id" name="id" id="id" />
						<form:hidden path="visit.id" name="visit.id" id="visitId" />
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
										<%
											if (((Billing)request.getAttribute("billing")).getVisit().getDiscountedAmount() == ((Billing)request.getAttribute("billing")).getVisit().getTotalAmount()) {
										%>
											<td width="25%" align="left"></td>
										<%
											}
										%>
										<%
												if (((Billing)request.getAttribute("billing")).getVisit().getDiscountedAmount() != ((Billing)request.getAttribute("billing")).getVisit().getTotalAmount()) {
										%>
										<td width="25%" align="left">${requestScope.billing.visit.discountedAmount}</td>
										<%
											}
										%>
									</tr>
									<tr>
										<td width="25%" align="left">Amount Paid:</td>
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
						<div id="billingDetails">
							<table width="100%" height="390" border="0" cellpadding="0"
								cellspacing="8" class="bodytext">
								<tbody>
									<tr>
										<td width="25%" align="left"><form:label
												path="billNumber" cssErrorClass="formFieldError">Bill Number :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="billNumber"
												path="billNumber" readonly="true"/></td>
										<td width="35%" align="left"><form:errors
												path="billNumber" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="billDate"
												cssErrorClass="formFieldError">* Bill Date (MM/DD/YYYY) :</form:label>
										</td>
										<td width="40%" align="left"><form:input id="billDate" name="billDate"
												path="billDate" cssClass="hasDatePicker" /></td>
										<td width="35%" align="left"><form:errors path="billDate"
												cssClass="formFieldError" /></td>
									</tr>

									<tr>
										<td width="25%" align="left"><form:label
												path="billAmount" cssErrorClass="formFieldError">* Bill Amount :</form:label>
										</td>
										<td width="40%" align="left"><form:input id="billAmount"
												path="billAmount" name="billAmount" /></td>
										<td width="35%" align="left"><form:errors
												path="billAmount" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="paymentMode" cssErrorClass="formFieldError">* Payment Mode :</form:label>
										</td>
										<td width="40%" align="left"><form:select id="paymentMode"
												path="paymentMode" name="paymentMode">
												<form:options items="${enumValues}" />
											</form:select></td>
										<td width="35%" align="left"><form:errors
												path="paymentMode" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td colspan="3" align="center"><br> <br> <input
											type="submit" value="Submit" name="btn_submit"
											id="btn_submit" /> <input type="button" value="Close"
											name="btn_cancel" id="btn_cancel"
											onclick="getAjaxCall('id=${requestScope.billing.visit.id}',null,null,'GET','vstVisitForm.action',null,null,null);">
											<br>
											<p>&nbsp;</p>
											<p>&nbsp;</p></td>
									</tr>
								</tbody>
							</table>
						</div>
					</form:form></td>
			</tr>
		</tbody>
	</table>
</div>