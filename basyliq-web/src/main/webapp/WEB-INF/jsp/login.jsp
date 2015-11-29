<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />

<title>Health Tree</title>
<link rel="SHORTCUT ICON"
	href="http://www.indianbank.in/images/logo.ico" />

<!-- JavaScripts-->
<link rel="stylesheet" type="text/css" href="styles/ib.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="styles/ib_external.css" />
<link rel="stylesheet" type="text/css"
	href="./styles/SpryMenuBarHorizontal.css" />
</head>

<body onload='document.loginForm.j_username.focus();'>
	<table class="table-root">
		<tbody>
			<tr class="top-blank-row">
				<td class="top-blank-col"></td>
			</tr>
			<tr>
				<td class="left-margin-col"></td>
				<td>
					<table class="top-content-table" width="950">
						<tbody>
							<tr>
								<td align="left" valign="top">
									<table class="banner-table" width="100%">
										<tbody>
											<tr align="top">
												<td class="banner-link-col" height="75"></td>
												<td width="5"></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td><div id="contents" class="home-content">
										<c:if test="${not empty error}">
											<div class="errorblock">
												Your login attempt was not successful, try again.<br />
												Caused :
												${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
											</div>
										</c:if>
										<div>
											<table width="100%" border="0" cellpadding="0"
												cellspacing="0" bgcolor="#FFFFFF">
												<tbody>
													<tr>
														<td height="26" align="left"
															background="images/hdr_bg.jpg" class="tabletitle">&nbsp;&nbsp;
															Login</td>
													</tr>
													<tr>
														<td><form name="loginForm" action="<c:url value='j_spring_security_check' />"
																method="post">
																<table width="100%" height="390" border="0"
																	cellpadding="0" cellspacing="8" class="bodytext">
																	<tbody>
																		<tr>
																			<td width="15%" align="left">User Id :</td>
																			<td width="15%" align="left"><input type="text"
																				name="j_username" />
																			</td>
																			<td width="70%" align="left">&nbsp;</td>
																		</tr>
																		<tr>
																			<td width="15%" align="left">Password :</td>
																			<td width="15%" align="left"><input
																				name="j_password" type="password"/>
																			</td>
																			<td width="70%" align="left">&nbsp;</td>
																		</tr>
																		<tr>
																			<td width="30%" colspan="2" align="center"><br />
																				<br /> <input type="submit" value="Submit"
																				name="submit"/> <input
																				type="reset" value="Reset" name="reset"/>
																				<p>&nbsp;</p>
																				<p>&nbsp;</p></td>
																			<td width="70%" align="left">&nbsp;</td>
																		</tr>
																	</tbody>
																</table>
															</form>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td align="left" valign="middle" height="10" bgcolor="#FFFFFF"></td>
							</tr>
							<tr>
								<td height="8" align="center" valign="middle" bgcolor="#FFDD77"></td>
							</tr>
							<tr>
								<td height="24" align="center" valign="middle"
									background="./images/ftr_bg.jpg" class="footer-text">
									Designed &amp; Developed by Ram Software Engineering Labs
									Private Limited</td>
							</tr>
						</tbody>
					</table></td>
			</tr>
		</tbody>
	</table>
</body>
</html>