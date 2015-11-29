<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="patientSearchForm">
    <div id="message" class="error,bodytext"> <c:out value="${requestScope.message}" /></div>
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bgcolor="#FFFFFF">
		<tbody>
			<tr>
				<td height="26" align="left" background="images/hdr_bg.jpg"
					class="tabletitle">&nbsp;&nbsp;<a href="#" id="item6Tab" class="hms-menu" onclick="getAjaxCall(null,null,$('#item7Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate')"><img
						src="images/ic_hom.gif" width="20" height="18" border="0"> </a><a
					href="#" id="item7Tab" class="btnlinkhms-menu" onclick="getAjaxCall(null,null,$('#item7Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate')">home</a> &gt; Patient Search
					Form</td>
			</tr>
			<tr>
				<td><form:form name="searchForm" id="patientSearchForm"
						onsubmit="postAjaxCall(this,'POST','pntSearchPatient.action','dob','registrationFromDate','registrationToDate');return false;" method="post"
						commandName="patientSearchVO">
						<div id="searchCriteria">
							<table width="100%" height="390" border="0" cellpadding="0"
								cellspacing="8" class="bodytext">
								<tbody>
									<tr>
										<td width="25%" align="left"><form:label
												path="hospitalNumber" cssErrorClass="formFieldError">Hospital Number :</form:label>
										</td>
										<td width="40%" align="left"><form:input id="hospitalNumber" name="hospitalNumber"
												path="hospitalNumber" /></td>
										<td width="35%" align="left"><form:errors
												path="hospitalNumber" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="firstName"
												cssErrorClass="formFieldError">First Name :</form:label></td>
										<td width="40%" align="left"><form:input path="firstName" id="firstName" name="firstName"/>
										</td>
										<td width="35%" align="left"><form:errors
												path="firstName" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="lastName"
												cssErrorClass="formFieldError">Last Name :</form:label></td>
										<td width="40%" align="left"><form:input path="lastName" id="lastName" name="lastName"/>
										</td>
										<td width="35%" align="left"><form:errors path="lastName"
												cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="dob"
												cssErrorClass="formFieldError">Date of Birth (MM/DD/YYYY) :</form:label>
										</td>
										<td width="40%" align="left"><form:input id="dob" name="dob"
												path="dob" cssClass="hasDatePicker" /></td>
										<td width="35%" align="left"><form:errors path="dob"
												cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="registrationFromDate" cssErrorClass="formFieldError">Registration From Date (MM/DD/YYYY) :</form:label>
										</td>
										<td width="40%" align="left"><form:input
												id="registrationFromDate" path="registrationFromDate" name="registrationFromDate"
												cssClass="hasDatePicker" /></td>
										<td width="35%" align="left"><form:errors
												path="registrationFromDate" cssClass="formFieldError" /></td>
									</tr>

									<tr>
										<td width="25%" align="left"><form:label
												path="registrationToDate" cssErrorClass="formFieldError">Registration To Date (MM/DD/YYYY) :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="registrationToDate"
												id="registrationToDate" path="registrationToDate"
												cssClass="hasDatePicker" /></td>
										<td width="35%" align="left"><form:errors
												path="registrationToDate" cssClass="formFieldError" /></td>
									</tr>

									<tr>
										<td width="25%" align="left"><form:label
												path="phoneNumber" cssErrorClass="formFieldError">Phone Number :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="phoneNumber"
												path="phoneNumber" id="phoneNumber" /></td>
										<td width="35%" align="left"><form:errors
												path="phoneNumber" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="mobileNumber" cssErrorClass="formFieldError">Mobile Number :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="mobileNumber"
												path="mobileNumber" id="mobileNumber"/></td>
										<td width="35%" align="left"><form:errors
												path="mobileNumber" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="emailId"
												cssErrorClass="formFieldError">Email Id :</form:label></td>
										<td width="40%" align="left"><form:input path="emailId" id="emailId" name="emailId" />
										</td>
										<td width="35%" align="left"><form:errors path="emailId"
												cssClass="formFieldError" /></td>
									</tr>

									<tr>
										<td colspan="3" align="center"><br> <br> <input
											type="submit" value="Submit" name="btn_submit"
											id="btn_submit" /> <input type="button" value="Cancel"
											name="btn_cancel" id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">
											<br>
											<p>&nbsp;</p>
											<p>&nbsp;</p>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</form:form></td>
			</tr>
		</tbody>
	</table>
</div>