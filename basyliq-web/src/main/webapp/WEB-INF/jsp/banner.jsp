<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tr>
	<td align="left" valign="top">
		<table class="banner-table">
			<tbody>
				<tr align="right">
					<td align="right" class="bannertext black-color">Logged in as <a
						title="View/Edit Profile" class="ftrlink black-color" href="getProfile.action">
							<c:set var="loggedInUser"
								value="${sessionScope['scopedTarget.hmsSession'].loggedInUser}" />
							<c:out value="${loggedInUser.name}" /></a> &nbsp;&nbsp;</td>
					<td align="left" class="banner-link-col,bannertext" height="75"><a
						class="ftrlink black-color" href="logout.action" >Logout</a>
					</td>
					<td width="5"></td>
				</tr>
			</tbody>
		</table></td>
</tr>