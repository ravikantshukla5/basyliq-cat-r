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
					class="tabletitle">&nbsp;&nbsp;<a href="#" id="item6Tab" class="hms-menu" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');"><img
						src="images/ic_hom.gif" width="20" height="18" border="0"> </a><a
					href="#" id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">home</a> &gt; Patient Visit Form</td>
			</tr>
			<tr>
				<td><form:form name="visitEntryForm"
						onsubmit="postAjaxCall(this,'POST','vstVisitForm.action','visitDate',null,null);return false;" method="post" commandName="visit">
						<form:hidden path="id" id="id" />
						<div id="visitDetails">
							<table width="100%" height="390" border="0" cellpadding="0"
								cellspacing="8" class="bodytext">
								<tbody>
									<tr>
										<td width="25%" align="left"><form:label
												path="patient.hospitalNumber" cssErrorClass="formFieldError">* Hospital Number :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="patient.hospitalNumber"
												path="patient.hospitalNumber" id="hospitalNumber"/></td>
										<td width="35%" align="left"><form:errors
												path="patient.hospitalNumber" cssClass="formFieldError" />
										</td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="visitDate"
												cssErrorClass="formFieldError">* Visit Date (MM/DD/YYYY) :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="visitDate"
												path="visitDate" id="visitDate" cssClass="hasDatePicker" /></td>
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
										<td width="40%" align="left"><form:select path="category" name="category" id="category">
												<form:options items="${enumValues}" />
											</form:select></td>
										<td width="35%" align="left"><form:errors path="category"
												cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="visitType"
												cssErrorClass="formFieldError">Visit Type :</form:label></td>
										<td width="40%" align="left"><form:select
												path="visitType" name="visitType" id="visitType" >
												<form:options items="${enumValues}" />
											</form:select></td>
										<td width="35%" align="left"><form:errors
												path="visitType" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="paymentStatus" cssErrorClass="formFieldError">Payment Status :</form:label>
										</td>
										<td width="40%" align="left"><form:input
												path="paymentStatus" name="paymentStatus" id="paymentStatus" readonly="true" /></td>
										<td width="35%" align="left"><form:errors
												path="paymentStatus" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td colspan="3" align="center"><br> <br> <input
											type="submit" value="Submit" name="btn_submit"
											id="btn_submit" /> <input type="button" value="Cancel"
											name="btn_cancel"
											id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">
											<br>
											<p>&nbsp;</p>
											<p>&nbsp;</p>
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