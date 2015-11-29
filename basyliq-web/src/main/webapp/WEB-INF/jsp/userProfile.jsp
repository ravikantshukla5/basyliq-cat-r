<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="userProfile">
<table width="100%" border="0" cellpadding="0" cellspacing="0"
	bgcolor="#FFFFFF">
	<tbody>
		<tr>
			<td height="26" align="left" background="images/hdr_bg.jpg"
				class="tabletitle">&nbsp;&nbsp;<a href="home.action"><img
				src="images/ic_hom.gif" width="20" height="18" border="0"> </a><a
				href="home.action" class="btnlink">home</a> &gt; User Profile</td>
		</tr>
		<tr>
			<td height="26" align="left" class="tabletitle">&nbsp;&nbsp;<a
				href="changePassword.action">Change Password </a></td>
		</tr>

		<tr>
			<td><form:form name="userProfile"
				action="updateUserProfile.action" method="post" commandName="user">
				<table width="100%" height="390" border="0" cellpadding="0"
					cellspacing="8" class="bodytext">
					<tbody>
						<tr>
							<td width="25%" align="left"><form:label path="firstName"
								cssErrorClass="formFieldError">First Name :</form:label></td>
							<td width="40%" align="left"><form:input path="firstName"
								readonly="true" /></td>
							<td width="35%" align="left"><form:errors path="firstName"
								cssClass="formFieldError" /></td>
						</tr>
						<tr>
							<td width="25%" align="left"><form:label path="lastName"
								cssErrorClass="formFieldError">Last Name :</form:label></td>
							<td width="40%" align="left"><form:input path="lastName"
								readonly="true" /></td>
							<td width="35%" align="left"><form:errors path="lastName"
								cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label path="middleName"
								cssErrorClass="formFieldError">Middle Name :</form:label></td>
							<td width="40%" align="left"><form:input path="middleName"
								readonly="true" /></td>
							<td width="35%" align="left"><form:errors path="middleName"
								cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label path="email"
								cssErrorClass="formFieldError">Email Address :</form:label></td>
							<td width="40%" align="left"><form:input path="email"
								readonly="true" /></td>
							<td width="35%" align="left"><form:errors path="email"
								cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label path="joiningDate"
								cssErrorClass="formFieldError">Joining Date :</form:label></td>
							<td width="40%" align="left"><form:input id="joiningDate"
								path="joiningDate" cssClass="hasDatePicker" readonly="true" /></td>
							<td width="35%" align="left"><form:errors path="joiningDate"
								cssClass="formFieldError" /></td>
						</tr>
						<tr>
							<td width="25%" align="left"><form:label
								path="relievingDate" cssErrorClass="formFieldError">Relieving Date:</form:label>
							</td>
							<td width="40%" align="left"><form:input id="relievingDate"
								path="relievingDate" cssClass="hasDatePicker" readonly="true" /></td>
							<td width="35%" align="left"><form:errors
								path="relievingDate" cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label
								path="employmentStatus" cssErrorClass="formFieldError">Employment Status :</form:label>
							</td>
							<td width="40%" align="left"><form:select
								path="employmentStatus" disabled="true">
								<form:options items="${enumValues}" />
							</form:select></td>
							<td width="35%" align="left"><form:errors
								path="employmentStatus" cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label path="category"
								cssErrorClass="formFieldError">Category :</form:label></td>
							<td width="40%" align="left"><form:select path="category"
								disabled="true">
								<form:options items="${enumValues}" />
							</form:select></td>
							<td width="35%" align="left"><form:errors path="category"
								cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label path="userStatus"
								cssErrorClass="formFieldError">Category :</form:label></td>
							<td width="40%" align="left"><form:select path="userStatus"
								disabled="true">
								<form:options items="${enumValues}" />
							</form:select></td>
							<td width="35%" align="left"><form:errors path="userStatus"
								cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label
								path="department.shortName" cssErrorClass="formFieldError">Department Name :</form:label>
							</td>
							<td width="40%" align="left"><form:input
								path="department.shortName" readonly="true" /></td>
							<td width="35%" align="left"><form:errors
								path="department.shortName" cssClass="formFieldError" /></td>
						</tr>
						<tr>
							<td width="25%" align="left"><form:label path="office.name"
								cssErrorClass="formFieldError">Branch Office Name :</form:label>
							</td>
							<td width="40%" align="left"><form:input path="office.name"
								readonly="true" /></td>
							<td width="35%" align="left"><form:errors path="office.name"
								cssClass="formFieldError" /></td>
						</tr>





						<tr>
							<td colspan="3" align="left">Address :</td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label
								path="address.firstLine" cssErrorClass="formFieldError">First Line :</form:label>
							</td>
							<td width="40%" align="left"><form:input
								path="address.firstLine" readonly="true" /></td>
							<td width="35%" align="left"><form:errors
								path="address.firstLine" cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label
								path="address.secondLine" cssErrorClass="formFieldError">Second Line :</form:label>
							</td>
							<td width="40%" align="left"><form:input
								path="address.secondLine" readonly="true" /></td>
							<td width="35%" align="left"><form:errors
								path="address.secondLine" cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label
								path="address.thirdLine" cssErrorClass="formFieldError">Third Line :</form:label>
							</td>
							<td width="40%" align="left"><form:input
								path="address.thirdLine" readonly="true" /></td>
							<td width="35%" align="left"><form:errors
								path="address.thirdLine" cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label
								path="address.landmark" cssErrorClass="formFieldError">Landmark :</form:label>
							</td>
							<td width="40%" align="left"><form:input
								path="address.landmark" readonly="true" /></td>
							<td width="35%" align="left"><form:errors
								path="address.landmark" cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label path="address.city"
								cssErrorClass="formFieldError">City :</form:label></td>
							<td width="40%" align="left"><form:input path="address.city"
								readonly="true" /></td>
							<td width="35%" align="left"><form:errors
								path="address.city" cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label
								path="address.state" cssErrorClass="formFieldError">State :</form:label>
							</td>
							<td width="40%" align="left"><form:input
								path="address.state" readonly="true" /></td>
							<td width="35%" align="left"><form:errors
								path="address.state" cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label
								path="address.country" cssErrorClass="formFieldError">Country :</form:label>
							</td>
							<td width="40%" align="left"><form:input
								path="address.country" readonly="true" /></td>
							<td width="35%" align="left"><form:errors
								path="address.country" cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label
								path="address.pincode" cssErrorClass="formFieldError">PIN Code :</form:label>
							</td>
							<td width="40%" align="left"><form:input
								path="address.pincode" readonly="true" /></td>
							<td width="35%" align="left"><form:errors
								path="address.pincode" cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label
								path="address.contactNumber1" cssErrorClass="formFieldError">Contact Number :</form:label>
							</td>
							<td width="40%" align="left"><form:input
								path="address.contactNumber1" readonly="true" /></td>
							<td width="35%" align="left"><form:errors
								path="address.contactNumber1" cssClass="formFieldError" /></td>
						</tr>

						<tr>
							<td width="25%" align="left"><form:label
								path="address.contactNumber2" cssErrorClass="formFieldError">Alternate Contact Number :</form:label>
							</td>
							<td width="40%" align="left"><form:input
								path="address.contactNumber2" readonly="true" /></td>
							<td width="35%" align="left"><form:errors
								path="address.contactNumber2" cssClass="formFieldError" /></td>
						</tr>




						<tr>
							<td colspan="3" align="center"><br>
							<br>
							<input type="submit" value="SUBMIT" name="btn_submit"
								id="btn_submit" /> <input type="button" value="CANCEL"
								name="btn_cancel" id="btn_cancel"
								onclick=
	javascript: window.location = 'home.action';
> <br>

							<p>&nbsp;</p>
							<p>&nbsp;</p>
							</td>
						</tr>
					</tbody>
				</table>

			</form:form></td>
		</tr>
	</tbody>
</table>
</div>