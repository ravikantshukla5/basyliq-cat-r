<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table width="100%" border="0" cellpadding="0" cellspacing="0"
	bgcolor="#FFFFFF">
	<tbody>
		<tr>
			<td height="26" width="20%" align="left" background="images/hdr_bg.jpg"
				class="tabletitle">&nbsp;&nbsp;<a href="home.action"><img
					src="images/ic_hom.gif" width="20" height="18" border="0"> </a>&nbsp;<a
				href="home.action" class="btnlink">home</a> &gt; User List</td>
			<td height="26" width="80%" align="left" background="images/hdr_bg.jpg"
				class="tabletitle"><a href="addUser.action">Add
					User</a></td>
		</tr>
		<tr>
			<td colspan="2"><table width="100%" border="0" cellspacing="10"
					cellpadding="0" class="bodytext">
					<tbody>
						<tr>
							<td height="500" align="left" valign="top" class="bodytext">
								<table border="0" cellpadding="6" cellspacing="1"
									bgcolor="#B9DAFF" class="bodytext">
									<thead>
										<tr bgcolor="#DFEEFF" style="font-weight: bold">
											<td>User Id</td>
											<td>S R No</td>
											<td>First Name</td>
											<td>Last Name</td>
											<td>Middle Name</td>
											<td>Email</td>
											<td>Joining Date</td>
											<td>Relieving Date</td>
											<td>Employment Status</td>
											<td>Category</td>
											<td>User Status</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="user" items="${requestScope.users}">
											<tr bgcolor="#F4FAFF">
												<td><c:url value="viewUser.action"
														var="viewUsers">
														<c:param name="userId" value="${user.userId }"></c:param>
													</c:url> <a href='<c:out value="${viewUsers}"/>'>${usre.userId
														}</a></td>
												<td>${user.srNo}</td>
												<td>${user.firstName}</td>
												<td>${user.lastName}</td>
												<td>${user.middleName}</td>
												<td>${user.email}</td>
												<td>${user.joiningDate}</td>
												<td>${user.relievingDate}</td>
												<td>${user.employmentStatus}</td>
												<td>${user.category}</td>
												<td>${user.userStatus}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>