<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="defaultHead.jsp"%>
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
							<tr>
								<td><div id="message" class="error,bodytext"/> <c:out value="${requestScope.message}" />
								</td>
							</tr>
							<tr>
								<td><div id="contents" style="width: 600; height: 200;" />
									<%@include file="userGrid.jsp"%></td>
							</tr>
							<%@include file="footer.jsp"%>
						</tbody>
					</table></td>
			</tr>
		</tbody>
	</table>
</body>
</html>