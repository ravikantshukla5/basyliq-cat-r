<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="visitEntryDiv">
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
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">home</a> &gt; Visit Form</td>
			</tr>
			<tr>
				<td><form:form name="visitEntryForm" id="visitEntryFormId"
						 onsubmit="postAjaxCall(this,'POST','vstVisitForm.action','visitDate',null,null);return false;" method="post" commandName="visit">
						<form:hidden path="id" id="id" name="id" />
						<div id="visitDetails">
							<table width="100%" height="390" border="0" cellpadding="0"
								cellspacing="8" class="bodytext">
								<tbody>
									<tr>
										<td width="25%" align="left"><form:label
												path="patient.hospitalNumber" cssErrorClass="formFieldError">* Hospital Number :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="patient.hospitalNumber"
												path="patient.hospitalNumber" id="hospitalNumber" /></td>
										<td width="35%" align="left"><form:errors
												path="patient.hospitalNumber" cssClass="formFieldError" />
										</td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="visitDate"
												cssErrorClass="formFieldError">* Visit Date (MM/DD/YYYY) :</form:label>
										</td>
										<td width="40%" align="left"><form:input id="visitDate" name="visitDate"
												path="visitDate" cssClass="hasDatePicker" /></td>
										<td width="35%" align="left"><form:errors
												path="visitDate" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="patientIllness" cssErrorClass="formFieldError">* Illness :</form:label>
										</td>
										<td width="40%" align="left"><form:textarea name="patientIllness"
												path="patientIllness" id="patientIllness" cols="30" rows="5" />
										</td>
										<td width="35%" align="left"><form:errors
												path="patientIllness" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="category"
												cssErrorClass="formFieldError">Category :</form:label></td>
										<td width="40%" align="left"><form:select path="category" name="category" id = "category" >
												<form:options items="${enumValues}" />
											</form:select></td>
										<td width="35%" align="left"><form:errors path="category"
												cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="visitType"
												cssErrorClass="formFieldError">Visit Type :</form:label></td>
										<td width="40%" align="left"><form:select id="visitType" name="visitType"
												path="visitType">
												<form:options items="${enumValues}" />
											</form:select></td>
										<td width="35%" align="left"><form:errors
												path="visitType" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="totalAmount" cssErrorClass="formFieldError">Total Amount :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="totalAmount"
												path="totalAmount" id="totalAmount" readonly="true" /></td>
										<td width="35%" align="left"><form:errors
												path="totalAmount" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="discountedAmount" cssErrorClass="formFieldError">Discounted Amount :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="discountedAmount"
												path="discountedAmount" id="discountedAmount" readonly="true" /></td>
										<td width="35%" align="left"><form:errors
												path="discountedAmount" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="amountPaid" cssErrorClass="formFieldError">Amount Paid :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="amountPaid"
												path="amountPaid" id="amountPaid" readonly="true" /></td>
										<td width="35%" align="left"><form:errors
												path="amountPaid" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="paymentStatus" cssErrorClass="formFieldError">Payment Status :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="paymentStatus"
												path="paymentStatus" readonly="true" /></td>
										<td width="35%" align="left"><form:errors
												path="paymentStatus" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td colspan="3" align="center"><input type="submit"
											value="Submit" name="btn_submit" id="btn_submit" /> <input
											type="button" value="Close" name="btn_cancel"
											id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','vstSearchVisit.action','visitFromDate','visitToDate',null);"/><input
											type="button" value="Add Registration"
											name="btn_reg_service" id="btn_reg_service"
											onclick="getAjaxCall('visitId=${requestScope.visit.id}','category=REGISTRATION',null,'GET','vstServiceForm.action',null,null,null);"/>
											<input
											type="button" value="Add Consultation"
											name="btn_cons_service" id="btn_cons_service"
											onclick="getAjaxCall('visitId=${requestScope.visit.id}','category=CONSULTATION',null,'GET','vstServiceForm.action',null,null,null);" />
											<input type="button" value="Add Treatment"
											name="btn_treatment_service" id="btn_treatment_service"
											onclick="getAjaxCall('visitId=${requestScope.visit.id}','category=TREATMENT',null,'GET','vstServiceForm.action',null,null,null);" /><input
											type="button" value="Add Room Rental" name="btn_room_service"
											id="btn_room_service"
											onclick="getAjaxCall('visitId=${requestScope.visit.id}','category=ROOM_RENTAL',null,'GET','vstServiceForm.action',null,null,null);" /><input
											type="button" value="Make Payment" name="btn_bill_service"
											id="btn_bill_service"
											onclick="getAjaxCall('visitId=${requestScope.visit.id}',null,null,'GET','blgBillingForm.action','billDate',null,null);" />
											<br></td>
									</tr>
									<tr>
										<td colspan="3" align="left"><b>Details of Services
												Availed</b><br />
											<table border="0" cellpadding="6" cellspacing="1"
												bgcolor="#B9DAFF" class="bodytext">
												<thead>
													<tr bgcolor="#DFEEFF" style="font-weight: bold">
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
														items="${requestScope.visit.servicesAvailed}">
														<tr bgcolor="#F4FAFF">
															<td> <a href='#' onclick="getAjaxCall('id=${service.id}',null,null,'GET','vstServiceForm.action',null,null,null);">${service.description}</a>
															</td>
															<td>${service.type}</td>
															<td>${service.standardRate}</td>
															<td>${service.actualRate}</td>
															<td>${service.quantity}</td>
															<td>${service.amount}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</td>
									</tr>
									<tr>
										<td colspan="3" align="left"><b>Details of Billing</b><br />
											<table border="0" cellpadding="6" cellspacing="1"
												bgcolor="#B9DAFF" class="bodytext">
												<thead>
													<tr bgcolor="#DFEEFF" style="font-weight: bold">
														<td>Bill Number</td>
														<td>Bill Date</td>
														<td>Bill Amount</td>
														<td>Payment Mode</td>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="billing"
														items="${requestScope.visit.billing}">
														<tr bgcolor="#F4FAFF">
															<td> <a href='#' onclick="getAjaxCall('id=${billing.id }',null,null,'GET','blgBillingFormToPrint.action',null,null,null);">${billing.billNumber}</a>
															</td>
															<td>${billing.billDate}</td>
															<td>${billing.billAmount}</td>
															<td>${billing.paymentMode}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr />
					</form:form></td>
			</tr>
		</tbody>
	</table>
</div>