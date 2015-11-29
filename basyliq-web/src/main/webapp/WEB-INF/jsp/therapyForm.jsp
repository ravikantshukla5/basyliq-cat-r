<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="therapyForm">
   <div id="message" class="error,bodytext"> <c:out value="${requestScope.message}" /></div>
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bgcolor="#FFFFFF">
		<tbody>
			<tr>
				<td height="26" align="left" background="images/hdr_bg.jpg"
					class="tabletitle">&nbsp;&nbsp;<a href="#" id="item6Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');"><img
						src="images/ic_hom.gif" width="20" height="18" border="0"> </a><a
					href="#" id="item6Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">home</a> &gt; Therapy Form</td>
			</tr>
			<tr>
				<td><form:form name="therapyForm" id = "therapyFormId"
						onsubmit="postAjaxCall(this,'POST','admTherapyForm.action','joiningDate',null,null);return false;" method="post" commandName="therapy">
						<form:hidden path="id" id="id" name="id" />
						<table width="100%" height="390" border="0" cellpadding="0"
							cellspacing="8" class="bodytext">
							<tbody>
								<tr>
									<td width="25%" align="left"><form:label path="name"
											cssErrorClass="formFieldError">Name :</form:label></td>
									<td width="40%" align="left"><form:input path="name" name="name" id="name" />
									</td>
									<td width="35%" align="left"><form:errors path="name"
											cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label
											path="description" cssErrorClass="formFieldError">Description :</form:label>
									</td>
									<td width="40%" align="left"><form:input name="description"
											path="description" id="description" />
									</td>
									<td width="35%" align="left"><form:errors
											path="description" cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label path="rate"
											cssErrorClass="formFieldError">Rate :</form:label></td>
									<td width="40%" align="left"><form:input path="rate" name="rate" id="rate" />
									</td>
									<td width="35%" align="left"><form:errors path="rate"
											cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td colspan="3" align="center"><br> <br> <input
										type="submit" value="Submit" name="btn_submit" id="btn_submit" />
										<input type="button" value="Cancel" name="btn_cancel"
										id="item6Tab"
										onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','admManageTherapies.action',null,null,null);">
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