<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="visitSearchForm">

	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bgcolor="#FFFFFF">
		<tbody>
			<tr>
				<td height="26" align="left" background="images/hdr_bg.jpg"
					class="tabletitle">&nbsp;&nbsp;<a href="#" id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');"><img
						src="images/ic_hom.gif" width="20" height="18" border="0"> </a><a
					href="#" id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">home</a> &gt; Visit Search Form</td>
			</tr>
			<tr>
				<td><form:form name="searchForm" id="searchFormId" onsubmit="postAjaxCall(this,'POST','vstSearchVisit.action','visitFromDate','visitToDate',null);return false;"
						method="post" commandName="visitSearchVO">
						<div id="searchCriteria">
							<table width="100%" height="390" border="0" cellpadding="0"
								cellspacing="8" class="bodytext">
								<tbody>
									<tr>
										<td width="25%" align="left"><form:label
												path="hospitalNumber" cssErrorClass="formFieldError">Hospital Number :</form:label>
										</td>
										<td width="40%" align="left"><form:input id="hospitalNumber"
												path="hospitalNumber" name="hospitalNumber" />
										</td>
										<td width="35%" align="left"><form:errors
												path="hospitalNumber" cssClass="formFieldError" />
										</td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="category"
												cssErrorClass="formFieldError">Category :</form:label>
										</td>
										<td width="40%" align="left"><form:select path="category" name="category" id="category">
												<form:options items="${enumValues}" />
											</form:select></td>
										<td width="35%" align="left"><form:errors
												path="category" cssClass="formFieldError" />
										</td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label path="visitType"
												cssErrorClass="formFieldError">Visit Type :</form:label></td>
										<td width="40%" align="left"><form:select id="visitType" name="visitType"
												path="visitType">
												<form:options items="${enumValues}" />
											</form:select></td>
										<td width="35%" align="left"><form:errors
												path="visitType" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="paymentStatus" cssErrorClass="formFieldError">Payment Status :</form:label>
										</td>
										<td width="40%" align="left"><form:select id="paymentStatus" name="paymentStatus"
												path="paymentStatus">
												<form:options items="${enumValues}" />
											</form:select></td>
										<td width="35%" align="left"><form:errors
												path="paymentStatus" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="visitFromDate" cssErrorClass="formFieldError">Visit From Date (MM/DD/YYYY) :</form:label>
										</td>
										<td width="40%" align="left"><form:input
												id="visitFromDate" path="visitFromDate" name="visitFromDate"
												cssClass="hasDatePicker" />
										</td>
										<td width="35%" align="left"><form:errors
												path="visitFromDate" cssClass="formFieldError" />
										</td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="visitToDate" cssErrorClass="formFieldError">Visit To Date (MM/DD/YYYY) :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="visitToDate"
												id="visitToDate" path="visitToDate"
												cssClass="hasDatePicker" />
										</td>
										<td width="35%" align="left"><form:errors
												path="visitToDate" cssClass="formFieldError" />
										</td>
									</tr>
									<tr>
										<td colspan="3" align="center"><br> <br> <input
											type="submit" value="Submit" name="btn_submit"
											id="btn_submit" /> <input type="button" value="Cancel"
											name="btn_cancel" id="item6Tab" class="hms-menu"
											onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">
											<br>
											<p>&nbsp;</p>
											<p>&nbsp;</p></td>
									</tr>
								</tbody>
							</table>
						</div>
					</form:form>
				</td>
			</tr>
		</tbody>
	</table>
</div>