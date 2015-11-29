<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="userDiv">
<div id="message" class="error,bodytext"> <c:out value="${requestScope.message}" /></div>
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bgcolor="#FFFFFF">
		<tbody>
			<tr>
				<td height="26" align="left" background="images/hdr_bg.jpg"
					class="tabletitle">&nbsp;&nbsp;<a href="#" id="item6Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">
					<img
						src="images/ic_hom.gif" width="20" height="18" border="0"> </a><a
					href="#" id="item6Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">home</a> &gt; <a id="item4Tab"
					href="#" onclick="getAjaxCall(null,null,$('#item4Tab a'),'GET','admManageUsers.action',null,null,null);">User
						List</a> &gt; User Form</td>
			</tr>
			<tr>
				<td><form:form name="userForm" onsubmit="postAjaxCall(this,'POST','admUserForm.action',null,null,null);return false;"
						method="post" commandName="user">
						<table width="100%" height="390" border="0" cellpadding="0"
							cellspacing="8" class="bodytext">
							<tbody>
								<tr>
									<td>
										<form:hidden
											path="id" name="id" id="id" />
									</td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label path="userId"
											cssErrorClass="formFieldError">User Id :</form:label></td>
									<td width="40%" align="left"><form:input path="userId" name="userId" id="userId"/>
									</td>
									<td width="35%" align="left"><form:errors path="userId"
											cssClass="formFieldError" />
									</td>
								</tr>
							
								<tr>
									<td width="25%" align="left"><form:label
											path="name" cssErrorClass="formFieldError">Name :</form:label>
									</td>
									<td width="40%" align="left"><form:input
											path="name" name="name" id="name" />
									</td>
									<td width="35%" align="left"><form:errors
											path="name" cssClass="formFieldError" />
									</td>
								</tr>
								
								<tr>
									<td width="25%" align="left"><form:label
											path="designation" cssErrorClass="formFieldError">Designation :</form:label>
									</td>
									<td width="40%" align="left"><form:input
											path="designation" name="designation" id="designation" />
									</td>
									<td width="35%" align="left"><form:errors
											path="designation" cssClass="formFieldError" />
									</td>
								</tr>
								
								
								<tr>
									<td colspan="3" align="center"><br> <br> <input
										type="submit" value="SUBMIT" name="btn_submit" id="btn_submit" />
										<input type="button" value="CANCEL" name="btn_cancel"
										id="item4Tab"
					                    onclick="getAjaxCall(null,null,$('#item4Tab a'),'GET','admManageUsers.action',null,null,null);">
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