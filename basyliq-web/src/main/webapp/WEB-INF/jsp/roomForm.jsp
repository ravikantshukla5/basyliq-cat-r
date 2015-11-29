<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="roomForm">
   <div id="message" class="error,bodytext"> <c:out value="${requestScope.message}" /></div>
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bgcolor="#FFFFFF">
		<tbody>
			<tr>
				<td height="26" align="left" background="images/hdr_bg.jpg"
					class="tabletitle">&nbsp;&nbsp;<a href="#" id="item6Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');" ><img
						src="images/ic_hom.gif" width="20" height="18" border="0"> </a><a
					href="#" class="btnlink" id="item6Tab" onclick="getAjaxCall(null,null,$('#item6Tab a'),'GET','home.action','dob','registrationFromDate','registrationToDate');" >home</a> &gt; Room Form</td>
			</tr>
			<tr>
				<td><form:form name="roomForm" id="roomFormId"
						method="post" commandName="room" onsubmit="postAjaxCall(this,'POST','admRoomForm.action',null,null,null);return false;">
						<form:hidden path="id" id="id" name="id" />
						<table width="100%" height="390" border="0" cellpadding="0"
							cellspacing="8" class="bodytext">
							<tbody>
								<tr>
									<td width="25%" align="left"><form:label path="roomNumber"
											cssErrorClass="formFieldError">Room Number :</form:label></td>
									<td width="40%" align="left"><form:input path="roomNumber" name="roomNumber" id="roomNumber"/>
									</td>
									<td width="35%" align="left"><form:errors
											path="roomNumber" cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label path="roomType"
											cssErrorClass="formFieldError">Room Type :</form:label>
									</td>
									<td width="40%" align="left"><form:select path="roomType" name="roomType" id="roomType">
											<form:options items="${enumValues}" />
										</form:select>
									</td>
									<td width="35%" align="left"><form:errors path="roomType"
											cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label path="capacity"
											cssErrorClass="formFieldError">Capacity :</form:label>
									</td>
									<td width="40%" align="left"><form:input path="capacity" name="capacity" id="capacity" />
									</td>
									<td width="35%" align="left"><form:errors path="capacity"
											cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label path="rate"
											cssErrorClass="formFieldError">Rate :</form:label></td>
									<td width="40%" align="left"><form:input path="rate" name="rate" id="rate"/>
									</td>
									<td width="35%" align="left"><form:errors path="rate"
											cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td width="25%" align="left"><form:label path="unit"
											cssErrorClass="formFieldError">Unit :</form:label></td>
									<td width="40%" align="left"><form:input path="unit" name="unit" id="unit" />
									</td>
									<td width="35%" align="left"><form:errors path="unit"
											cssClass="formFieldError" />
									</td>
								</tr>
								<tr>
									<td colspan="3" align="center"><br> <br> <input
										type="submit" value="Submit" name="btn_submit" id="btn_submit" />
										<input type="button" value="Cancel" name="btn_cancel" id="item4Tab"
										onclick="getAjaxCall(null,null,$('#item4Tab a'),'GET','admManageRooms.action',null,null,null);">
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