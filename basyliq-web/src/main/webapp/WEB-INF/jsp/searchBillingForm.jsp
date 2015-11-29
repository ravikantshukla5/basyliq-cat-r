<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="billingSearchForm">

	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bgcolor="#FFFFFF">
		<tbody>
			<tr>
				<td height="26" align="left" background="images/hdr_bg.jpg"
					class="tabletitle">&nbsp;&nbsp;<a href="#" id="item7Tab" onclick="getAjaxCall(null,null,$('#item7Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');"><img
						src="images/ic_hom.gif" width="20" height="18" border="0"> </a><a
					href="#" id="item6Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">home</a> &gt; Billing Search Form</td>
			</tr>
			<tr>
				<td><form:form name="searchForm" id="searchBillingFormId" onsubmit="postAjaxCall(this,'POST','blgSearchBilling.action',null,null,null);;return false;"
						method="post" commandName="billingSearchVO">
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
										<td width="40%" align="left"><form:select name="visitType"
												path="visitType" id="visitType">
												<form:options items="${enumValues}" />
											</form:select></td>
										<td width="35%" align="left"><form:errors
												path="visitType" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="paymentStatus" cssErrorClass="formFieldError">Payment Status :</form:label>
										</td>
										<td width="40%" align="left"><form:select name="paymentStatus"
												path="paymentStatus" id="paymentStatus">
												<form:options items="${enumValues}" />
											</form:select></td>
										<td width="35%" align="left"><form:errors
												path="paymentStatus" cssClass="formFieldError" /></td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="billingFromDate" cssErrorClass="formFieldError">Billing From Date (MM/DD/YYYY) :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="billingFromDate"
												id="billingFromDate" path="billingFromDate"
												cssClass="hasDatePicker" />
										</td>
										<td width="35%" align="left"><form:errors
												path="billingFromDate" cssClass="formFieldError" />
										</td>
									</tr>
									<tr>
										<td width="25%" align="left"><form:label
												path="billingToDate" cssErrorClass="formFieldError">Billing To Date (MM/DD/YYYY) :</form:label>
										</td>
										<td width="40%" align="left"><form:input name="billingToDate"
												id="billingToDate" path="billingToDate"
												cssClass="hasDatePicker" />
										</td>
										<td width="35%" align="left"><form:errors
												path="billingToDate" cssClass="formFieldError" />
										</td>
									</tr>
									<tr>
										<td colspan="3" align="center"><br> <br> <input
											type="submit" value="Submit" name="btn_submit"
											id="btn_submit" /> <input type="button" value="Cancel"
											name="btn_cancel" id="item2Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');">
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