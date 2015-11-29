<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />

<title>Health Tree</title>
<link rel="SHORTCUT ICON"
	href="./images/logo.ico" />
<script type="text/javascript" src="./jquery-ui-1.8.20.custom/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="./jquery-ui-1.8.20.custom/js/jquery-ui-1.8.20.custom.min.js"></script>
<script type="text/javascript" src="./scripts/s3Slider.js"></script>
<script type="text/javascript" src="./scripts/SpryMenuBar.js"></script>
<script type="text/javascript" src="./scripts/for-all-ajax-call.js"></script>

<script type="text/javascript" src="./scripts/leaveApp.js"></script>
<script src="./scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="styles/ib_external.css" />
<link rel="stylesheet" type="text/css" href="styles/ib.css" />
<link rel="stylesheet" type="text/css" href="styles/loader.css" />
<link rel="stylesheet" type="text/css" href="styles/hms-style.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="styles/ib_external.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="styles/leaveApp.css" />
<link rel="stylesheet" type="text/css"
	href="./scripts/SpryMenuBarHorizontal.css" />
<link rel="stylesheet" type="text/css"
	href="./jquery-ui-1.8.20.custom/css/ui-lightness/jquery-ui-1.8.20.custom.css" />
<script type="text/javascript">
	var viewUrl = "<c:out value='${requestScope.viewUrl}'/>";
</script>
</head>

<body>
	<table class="table-root">
		<tbody>
			<tr class="top-blank-row">
				<td class="top-blank-col"></td>
			</tr>
			<tr>
				<td class="left-margin-col"></td>
				<td>
					<table class="top-content-table">
						<tbody>
							<%@include file="banner.jsp"%>
							<tr>
								<td align="left" valign="middle" height="20"><%@include
										file="navigationMenu.jsp"%></td>
							</tr>
							<c:if test="${requestScope.message != null}">
								<tr>
									<td><div id="message" class="error" /> <c:out
											value="${requestScope.message}" /></td>
								</tr>
							</c:if>
							<tr>
								<td><div id="contents" class="home-content"/>
									<div id="calendar"></div></td>
							</tr>
							<%@include file="footer.jsp"%>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<script type="text/javascript">
		$(document).ready(getAjaxCall(null,null,null,'GET','pntSearchPatient.action','dob','registrationFromDate','registrationToDate'));
	</script>
</body>
</html>