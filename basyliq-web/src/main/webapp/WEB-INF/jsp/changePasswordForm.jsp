<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	function compairPassword(){
		alert("Compair password");
		var password = document.getElementById("password").value;
		var conformPassword = document.getElementById("conformPassword").value;
		alert(password + " " + conformPassword);
		if(password == conformPassword){
			return true;
		}else{
			alert("Password and conform password fields must be same");
			return false;
		}
	}
</script>

<div id="changePasswordForm">
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bgcolor="#FFFFFF">
		<tbody>
			<tr>
				<td height="26" align="left" background="images/hdr_bg.jpg"
					class="tabletitle">&nbsp;&nbsp;<a href="home.action"><img
						src="images/ic_hom.gif" width="20" height="18" border="0"> </a><a
					href="home.action" class="btnlinka">home</a> <a href="getProfile.action"> &gt; User Profile </a> &gt; Change password</td>
			</tr>
			<tr>
				<td><form:form name="changePasswordForm"
						action="changePassword.action" method="post"
						commandName="userAccount">
						<table width="100%" height="390" border="0" cellpadding="0"
							cellspacing="8" class="bodytext">
							<tbody>
								<tr>
									<td width="25%" align="left"><form:label
											path="loginId" cssErrorClass="formFieldError">User Id :</form:label>
									</td>
									<td width="40%" align="left"><form:input
											path="loginId" readonly="true" /></td>
									<td width="35%" align="left"><form:errors
											path="loginId" cssClass="formFieldError" /></td>
								</tr>
								<tr>
									<td width="25%" align="left">Enter Old Password: </td>
									<td width="40%" align="left">	<input type="password" name="oldPassword" />	</td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label
											path="password" cssErrorClass="formFieldError">Enter New Password :</form:label>
									</td>
									<td width="40%" align="left"><form:password
											path="password"  /></td>
									<td width="35%" align="left"><form:errors
											path="password" cssClass="formFieldError" /></td>
								</tr>
								<tr>
									<td width="25%" align="left">Conform Password: </td>
									<td width="40%" align="left"><input type = "password" name = "conformPassword" id = "conformPassword"/></td>
								</tr>
								<tr>
									<td colspan="3" align="center"><br> <br> <input
										type="submit" value="SUBMIT" name="btn_submit" id="btn_submit" onclick="return compairPassword()"/>
										<input type="button" value="CANCEL" name="btn_cancel"
										id="btn_cancel"
										onclick="javascript:window.location='home.action'"> <br>

										<p>&nbsp;</p>
										<p>&nbsp;</p></td>
								</tr>
							</tbody>
						</table>

					</form:form></td>
			</tr>
		</tbody>
	</table>
</div>