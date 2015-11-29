<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="patientRegistrationDiv">
    <div id="message" class="error,bodytext"> <c:out value="${requestScope.message}" /></div>
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bgcolor="#FFFFFF">
		<tbody>
			<tr>
				<td height="26" align="left" background="images/hdr_bg.jpg"
					class="tabletitle">&nbsp;&nbsp;<a href="#" class="btnlink hms-menu" id="item7Tab" onclick="getAjaxCall(null,null,$('#item7Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');"><img
						src="images/ic_hom.gif" width="20" height="18" border="0"> </a><a id="item6Tab"
					href="#" class="btnlink hms-menu" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">home</a> &gt; Patient
					Registration Form
				</td>
			</tr>
			<tr>
				<td><form:form name="patientRegistrationForm" id="patientRegistrationFormId"
						onsubmit="postAjaxCall(this,'POST','pntRegistration.action','dob','registrationDate',null);return false;" method="post"
						commandName="patient">
						<form:hidden path="id" id="id" />
						<div id="personalDetails">
							<table width="100%" height="390" border="0" cellpadding="0"
								cellspacing="8" class="bodytext">
								<tbody>
									<tr>
										<td colspan="1" align="left"><b>Personal Details</b></td>
										<td colspan="2" align="right"><input type="submit" 
											value="Submit" name="btn_submit" id="btn_submit" /> <input 
											type="button" value="Cancel" name="btn_cancel" 
											id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');" /><input 
											type="button" value="Add Visit"	name="btn_visit" 
											id="btn_visit"
											onclick="getAjaxCall('hospitalNumber=${requestScope.patient.hospitalNumber}',null,null,'GET','vstVisitForm.action','visitDate',null,null);return false;" />
										</td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="hospitalNumber" cssErrorClass="formFieldError">Hospital Number :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="hospitalNumber"
												path="hospitalNumber" id="hospitalNumber"/></td>
										<td width="35%" align="left"><form:errors
												path="hospitalNumber" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="firstName"
												cssErrorClass="formFieldError">* First Name :</form:label></td>
										<td width="40%" align="left"><form:input path="firstName" name="firstName" id="firstName"/>
										</td>
										<td width="35%" align="left"><form:errors
												path="firstName" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="lastName"
												cssErrorClass="formFieldError">* Last Name :</form:label></td>
										<td width="40%" align="left"><form:input path="lastName" name="lastName" id="lastName" />
										</td>
										<td width="35%" align="left"><form:errors path="lastName"
												cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="fathersName" cssErrorClass="formFieldError">Fathers/Spouse Name :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="fathersName"
												path="fathersName" id="fathersName" /></td>
										<td width="35%" align="left"><form:errors
												path="fathersName" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="dob"
												cssErrorClass="formFieldError">* Date of Birth (MM/DD/YYYY) :</form:label>
										</td>
										<td width="40%" align="left"><form:input id="dob" name="dob"
												path="dob" cssClass="hasDatePicker" /></td>
										<td width="35%" align="left"><form:errors path="dob"
												cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="gender"
												cssErrorClass="formFieldError">Gender :</form:label></td>
										<td width="40%" align="left"><form:select path="gender" name="gender" id="gender">
												<form:options items="${genders}" />
											</form:select></td>
										<td width="35%" align="left"><form:errors path="gender"
												cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="registrationDate" cssErrorClass="formFieldError">* Registration Date (MM/DD/YYYY) :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="registrationDate"
												id="registrationDate" path="registrationDate"
												cssClass="hasDatePicker" /></td>
										<td width="35%" align="left"><form:errors
												path="registrationDate" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="bloodGroup" cssErrorClass="formFieldError">Blood Group :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="bloodGroup"
												path="bloodGroup" id="bloodGroup" /></td>
										<td width="35%" align="left"><form:errors
												path="bloodGroup" cssClass="formFieldError" /></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr/>
						<div id="contactDetails">
							<table width="100%" height="390" border="0" cellpadding="0"
								cellspacing="8" class="bodytext">
								<tbody>
									<tr>
										<td colspan="3" align="left"><b>Contact Details</b></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="address"
												cssErrorClass="formFieldError">Address :</form:label></td>
										<td width="40%" align="left"><form:textarea name="address"
												path="address" id="address" cols="30" rows="5" /></td>
										<td width="35%" align="left"><form:errors path="address"
												cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="phoneNumber" cssErrorClass="formFieldError">* Phone Number :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="phoneNumber"
												path="phoneNumber" id="phoneNumber" /></td>
										<td width="35%" align="left"><form:errors
												path="phoneNumber" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="mobileNumber" cssErrorClass="formFieldError">* Mobile Number :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="mobileNumber"
												path="mobileNumber" id="mobileNumber" /></td>
										<td width="35%" align="left"><form:errors
												path="mobileNumber" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="emailId"
												cssErrorClass="formFieldError">Email Id :</form:label></td>
										<td width="40%" align="left"><form:input path="emailId" name="emailId" id="emailId" />
										</td>
										<td width="35%" align="left"><form:errors path="emailId"
												cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="emergencyContactName" cssErrorClass="formFieldError">Emergency Contact Name :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="emergencyContactName"
												path="emergencyContactName" id="emergencyContactName" /></td>
										<td width="35%" align="left"><form:errors
												path="emergencyContactName" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="emergencyContactNumber" cssErrorClass="formFieldError">Emergency Contact Number :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="emergencyContactNumber"
												path="emergencyContactNumber" id="emergencyContactNumber" /></td>
										<td width="35%" align="left"><form:errors
												path="emergencyContactNumber" cssClass="formFieldError" />
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr/>
						<div id="professionalDetails">
							<table width="100%" height="390" border="0" cellpadding="0"
								cellspacing="8" class="bodytext">
								<tbody>
									<tr>
										<td colspan="3" align="left"><b>Professional Details</b></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="employmentType" cssErrorClass="formFieldError">Employment Type :</form:label>
										</td>
										<td width="40%" align="left"><form:select name="employmentType"
												path="employmentType" id="employmentType">
												<form:options items="${employmentTypes}" />
											</form:select></td>
										<td width="35%" align="left"><form:errors
												path="employmentType" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="occupation" cssErrorClass="formFieldError">Occupation :</form:label>
										</td>
										<td width="40%" align="left"><form:select id="occupation"
												path="occupation" name="occupation">
												<form:options items="${occupations}" />
											</form:select></td>
										<td width="35%" align="left"><form:errors
												path="occupation" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="officeAddress" cssErrorClass="formFieldError">Office Address :</form:label>
										</td>
										<td width="40%" align="left"><form:textarea name="officeAddress"
												path="officeAddress" id="officeAddress" cols="30" rows="5" />
										<td width="35%" align="left"><form:errors
												path="officeAddress" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="officialNumber" cssErrorClass="formFieldError">Official Number :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="officialNumber"
												path="officialNumber" id="officialNumber" /></td>
										<td width="35%" align="left"><form:errors
												path="officialNumber" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="annualIncome" cssErrorClass="formFieldError">Annual Income :</form:label>
										</td>
										<td width="40%" align="left"><form:input
												path="annualIncome" id="annualIncome" name="annualIncome" /></td>
										<td width="35%" align="left"><form:errors
												path="annualIncome" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="householdAnnualIncome" cssErrorClass="formFieldError">Household Annual Income :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="householdAnnualIncome"
												path="householdAnnualIncome" id="householdAnnualIncome" /></td>
										<td width="35%" align="left"><form:errors
												path="householdAnnualIncome" cssClass="formFieldError" /></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr/>
						<div id="medicalHistoryDetails">
							<table width="100%" height="390" border="0" cellpadding="0"
								cellspacing="8" class="bodytext">
								<tbody>
									<tr>
										<td colspan="3" align="left"><b>Medical History</b></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="medicalHistory" cssErrorClass="formFieldError">Medical History :</form:label>
										</td>
										<td width="40%" align="left"><form:textarea name="medicalHistory"
												path="medicalHistory" id="medicalHistory" cols="30" rows="5" />
										<td width="35%" align="left"><form:errors
												path="medicalHistory" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="allergyDetails" cssErrorClass="formFieldError">Allergy Details :</form:label>
										</td>
										<td width="40%" align="left"><form:textarea name="allergyDetails"
												path="allergyDetails" id="allergyDetails" cols="30" rows="5" />
										<td width="35%" align="left"><form:errors
												path="allergyDetails" cssClass="formFieldError" /></td>
									</tr>
								</tbody>
							</table>
						</div>
					</form:form></td>
			</tr>
		</tbody>
	</table>
</div>