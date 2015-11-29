<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="userDiv">
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bgcolor="#FFFFFF">
		<tbody>
			<tr>
				<td height="26" align="left" background="images/hdr_bg.jpg"
					class="tabletitle">&nbsp;&nbsp;<a href="#" id="item6Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate')"><img
						src="images/ic_hom.gif" width="20" height="18" border="0"> </a><a
					href="#" id="item6Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate')" class="btnlink">home</a> &gt; <a id="item4Tab"
					href="#" onclick = "getAjaxCall(null,null,$('#item4Tab a'),'GET','admManageUserAccounts.action',null,null,null);">User
						Account List</a> &gt; User Account Form</td>
			</tr>
			<tr>
				<td><form:form name="userAccountForm" id="userAccountFormId"
						method="post" onsubmit="postAjaxCall(this,'POST','admUserAccountForm.action',null,null,null);return false;"
						commandName="userAccount">
						<table width="100%" height="390" border="0" cellpadding="0"
							cellspacing="8" class="bodytext">
							<tbody>
								<tr>
									<td width="25%" align="left"><form:label path="loginId"
											cssErrorClass="formFieldError">Login Id :</form:label></td>
									<td width="40%" align="left"><form:input path="loginId" name="loginId" id="loginId"
											readonly="true" />
									</td>
									<td width="35%" align="left"><form:errors path="loginId"
											cssClass="formFieldError" />
									</td>
								</tr>

								<tr>
									<td width="25%" align="left"><form:label path="password"
											cssErrorClass="formFieldError">New Password (Leave password field blank in case if you don't want to change password) :</form:label>
									</td>
									<td width="40%" align="left"><form:password
											path="password" name="password" id="password"/></td>
									<td width="35%" align="left"><form:errors path="password"
											cssClass="formFieldError" /></td>
								</tr>

								<tr>
									<td width="25%" align="left"><form:label
											path="passwordExpiry" cssErrorClass="formFieldError">Password Expiry Date (MM/DD/YYYY):</form:label>
									</td>
									<td width="40%" align="left"><form:input name="passwordExpiry"
											id="passwordExpiry" path="passwordExpiry"
											cssClass="hasDatePicker" />
									</td>
									<td width="35%" align="left"><form:errors
											path="passwordExpiry" cssClass="formFieldError" />
									</td>
								</tr>

								<tr>
									<td width="25%" align="left"><form:label
											path="accountStatus" cssErrorClass="formFieldError">Account Status :</form:label>
									</td>
									<td width="40%" align="left"><form:select id="accountStatus" name="accountStatus"
											path="accountStatus">
											<form:options items="${enumValues}" />
										</form:select>
									</td>
									<td width="35%" align="left"><form:errors
											path="accountStatus" cssClass="formFieldError" />
									</td>
								</tr>

								<tr>
									<td width="25%" align="left"><form:label path="roles"
											cssErrorClass="formFieldError">Select Roles :</form:label></td>
									<td width="40%" align="left"><form:select multiple="true"
											path="roles" name="roles" id="roles">
											<form:options items="${roles}" itemValue="id"
												itemLabel="name" />
										</form:select>
									</td>
									<td width="35%" align="left"><form:errors path="roles"
											cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td colspan="3" align="center"><br> <br> <input
										type="submit" value="SUBMIT" name="btn_submit" id="btn_submit" />
										<input type="button" value="CANCEL" name="btn_cancel"
										id="item4Tab"
					                    onclick = "getAjaxCall(null,null,$('#item4Tab a'),'GET','admManageUserAccounts.action',null,null,null);">
										<br>

										<p>&nbsp;</p>
										<p>&nbsp;</p>
									</td>
								</tr>
							</tbody>
						</table>

					</form:form>
				</td>
			</tr>
		</tbody>
	</table>
</div>