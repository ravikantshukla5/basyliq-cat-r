<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="serviceForm">
    <div id="message" class="error,bodytext" > <c:out
										value="${requestScope.message}" /></div>
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bgcolor="#FFFFFF">
		<tbody>
			<tr>
				<td height="26" align="left" background="images/hdr_bg.jpg"
					class="tabletitle">&nbsp;&nbsp;<a href="#" id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');"><img
						src="images/ic_hom.gif" width="20" height="18" border="0"> </a><a
					href="#" id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">home</a> &gt; Service Form</td>
			</tr>
			<tr>
				<td><form:form name="serviceForm"
						onsubmit="postAjaxCall(this,'POST','vstServiceForm.action','visitDate',null,null);return false;" method="post" commandName="service">
						<form:hidden path="id" name="id" id="id" />
						<form:hidden path="visit.id" name="visit.id" id="visitId" />
						<table width="100%" height="390" border="0" cellpadding="0"
							cellspacing="8" class="bodytext">
							<tbody>
								<tr>
									<td width="25%" align="left"><form:label path="type"
											cssErrorClass="formFieldError">* Type :</form:label>
									</td>
									<td width="40%" align="left"><form:input path="type" name="type" id="type"
											readonly="true" /></td>
									<td width="35%" align="left"><form:errors path="type"
											cssClass="formFieldError" /></td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label
											path="serviceReference"  cssErrorClass="formFieldError">* Name :</form:label>
									</td>
									<td width="40%" align="left"><form:select id="serviceReference" name="serviceReference"
											path="serviceReference">
											<form:options items="${names}" />
										</form:select></td>
									<td width="35%" align="left"><form:errors
											path="serviceReference" cssClass="formFieldError" /></td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label
											path="standardRate" cssErrorClass="formFieldError">Standard Rate :</form:label>
									</td>
									<td width="40%" align="left"><form:input name="standardRate"
											path="standardRate" id="standardRate" readonly="true" /></td>
									<td width="35%" align="left"><form:errors
											path="standardRate" cssClass="formFieldError" /></td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label path="actualRate"
											cssErrorClass="formFieldError">* Actual Rate :</form:label>
									</td>
									<td width="40%" align="left"><form:input path="actualRate" name="actualRate" id="actualRate" />
									</td>
									<td width="35%" align="left"><form:errors
											path="actualRate" cssClass="formFieldError" /></td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label path="quantity"
											cssErrorClass="formFieldError">* Quantity :</form:label>
									</td>
									<td width="40%" align="left"><form:input path="quantity" name="quantity" id="quantity"/>
									</td>
									<td width="35%" align="left"><form:errors path="quantity"
											cssClass="formFieldError" /></td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label path="amount"
											cssErrorClass="formFieldError">Amount :</form:label>
									</td>
									<td width="40%" align="left"><form:input path="amount" name="amount" id="amount"
											readonly="true" /></td>
									<td width="35%" align="left"><form:errors path="amount"
											cssClass="formFieldError" /></td>
								</tr>
								<tr>
									<td colspan="3" align="center"><br> <br> <input
										type="submit" value="Submit" name="btn_submit" id="btn_submit" />
										<input type="button" value="Cancel" name="btn_cancel"
										id="btn_cancel"
										onclick="getAjaxCall('id=${requestScope.service.visit.id}',null,null,'GET','vstVisitForm.action',null,null,null);">
										<br>
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