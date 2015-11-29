<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="leaveAppForm">
  <div id="message" class="error,bodytext"> <c:out value="${requestScope.message}" /></div>
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bgcolor="#FFFFFF">
		<tbody>
			<tr>
				<td height="26" align="left" background="images/hdr_bg.jpg"
					class="tabletitle">&nbsp;&nbsp;<a href="#" id="item6Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');"><img
						src="images/ic_hom.gif" width="20" height="18" border="0"> </a><a
					href="#" id="item6Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">home</a> &gt; Doctor Form</td>
			</tr>
			<tr>
				<td><form:form name="doctorForm" onsubmit="postAjaxCall(this,'POST','admDoctorForm.action',null,null,null);return false;"
						method="post" commandName="doctor">
						<form:hidden path="id" id="id" name="id"/>
						<table width="100%" height="390" border="0" cellpadding="0"
							cellspacing="8" class="bodytext">
							<tbody>
								<tr>
									<td width="25%" align="left"><form:label path="name"
											cssErrorClass="formFieldError">Name :</form:label>
									</td>
									<td width="40%" align="left"><form:input path="name" name="name" id="name" />
									</td>
									<td width="35%" align="left"><form:errors path="name"
											cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label
											path="qualification" cssErrorClass="formFieldError">Qualification :</form:label>
									</td>
									<td width="40%" align="left"><form:input id="qualification" name="qualification"
											path="qualification" />
									</td>
									<td width="35%" align="left"><form:errors
											path="qualification" cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label
											path="yearsOfExperience" cssErrorClass="formFieldError">Years of Experience :</form:label>
									</td>
									<td width="40%" align="left"><form:input id="yearsOfExperience" name="yearsOfExperience"
											path="yearsOfExperience" />
									</td>
									<td width="35%" align="left"><form:errors
											path="yearsOfExperience" cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label
											path="consultationFees" cssErrorClass="formFieldError">Consultation Fees :</form:label>
									</td>
									<td width="40%" align="left"><form:input id="consultationFees" name="consultationFees"
											path="consultationFees" />
									</td>
									<td width="35%" align="left"><form:errors
											path="consultationFees" cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label
											path="experienceDescription" cssErrorClass="formFieldError">Experience Description :</form:label>
									</td>
									<td width="40%" align="left"><form:textarea id="experienceDescription" name="experienceDescription"
											path="experienceDescription" cols="25" rows="5" />
									</td>
									<td width="35%" align="left"><form:errors
											path="experienceDescription" cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label
											path="joiningDate" cssErrorClass="formFieldError">Joining Date (MM/DD/YYYY) :</form:label>
									</td>
									<td width="40%" align="left"><form:input id="joiningDate" name="joiningDate"
											path="joiningDate" cssClass="hasDatePicker" />
									</td>
									<td width="35%" align="left"><form:errors
											path="joiningDate" cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label path="type"
											cssErrorClass="formFieldError">Type :</form:label>
									</td>
									<td width="40%" align="left"><form:select path="type" name="type" id="type">
											<form:options items="${doctorTypes}" />
										</form:select>
									</td>
									<td width="35%" align="left"><form:errors path="type"
											cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label
											path="designation" cssErrorClass="formFieldError">Designation :</form:label>
									</td>
									<td width="40%" align="left"><form:input id="designation" name="designation"
											path="designation" />
									</td>
									<td width="35%" align="left"><form:errors
											path="designation" cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td colspan="3" align="center"><br> <br> <input
										type="submit" value="Submit" name="btn_submit" id="btn_submit" />
										<input type="button" value="Cancel" name="btn_cancel"
										id="item6Tab"
										onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','admManageDoctors.action',null,null,null);">
										<br>
										<p>&nbsp;</p>
										<p>&nbsp;</p></td>
								</tr>
							</tbody>
						</table>

					</form:form>
				</td>
			</tr>
		</tbody>
	</table>
</div>