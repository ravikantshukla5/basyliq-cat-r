<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div id="mainNav">	
<table width="952" height="15" border="0" bgcolor="#FFFFCC">
	<tbody>
		<tr>
			<td width="880" align="left">
				<ul id="Menubar1" class="MenuBarHorizontal">
					<li id="item1Tab"><a class="MenuBarItemSubmenu current hms-menu" href="#">Patients</a>
						<ul>
							<li><a href="#" onclick="getAjaxCall(null,null,$('#item1Tab a'),'GET','pntRegistration.action','dob','registrationDate',null)">New Patient
									Registration</a></li>
							<li><a href="#" onclick="getAjaxCall(null,null,$('#item1Tab a'),'GET','pntSearchPatient.action','dob','registrationFromDate','registrationToDate')">Search Patients</a>
							</li>
						</ul></li>
					<li id="item2Tab"><a class="MenuBarItemSubmenu hms-menu" href="#">Visit</a>
						<ul>
							<li><a href="#" onclick="getAjaxCall(null,null,$('#item1Tab a'),'GET','vstVisitForm.action',null,'visitDate',null)">Enter Patient Visit</a></li>

							<li><a href="#" onclick="getAjaxCall(null,null,$('#item2Tab a'),'GET','vstSearchVisit.action',null,'visitFromDate','visitToDate')">Search Patient Visits</a>
							</li>
							<li><a href="#" onclick="getAjaxCall(null,null,$('#item2Tab a'),'GET','vstSearchVisitByService.action',null,'visitFromDate','visitToDate')">Search Patient Visits By Service</a>
							</li>
						</ul></li>
					<li id="item3Tab"><a class="MenuBarItemSubmenu hms-menu" href="#">Billing</a>
						<ul>
							<li><a href="#" onclick="getAjaxCall(null,null,$('#item3Tab a'),'GET','blgSearchBilling.action',null,'billingFromDate','billingToDate')">Search Billing</a>
							</li>
						</ul></li>
						<!-- 
					<li><a class="MenuBarItemSubmenu" href="#">Reports</a>
						<ul>
							<li><a href="rptTodayBillingSummary">Today's Billing
									Summary</a></li>
							<li><a href="rptBillingSummaryInPeriod">Billing Summary
									between dates</a></li>
							<li><a href="rptCategoryBasedReports">Category Based
									Reports</a>
							</li>
						</ul></li> -->
					<li id="item4Tab"><a class="MenuBarItemSubmenu hms-menu" href="#">Admin</a>
						<ul>
							<li><a href="#" onclick="getAjaxCall(null,null,$('#item4Tab a'),'GET','admManageDoctors.action',null,null,null)">Manage Doctors</a></li>
							<li><a href="#" onclick="getAjaxCall(null,null,$('#item4Tab a'),'GET','admManageTherapies.action',null,null,null)">Manage Therapies</a>
							</li>
							<li><a href="#" onclick="getAjaxCall(null,null,$('#item4Tab a'),'GET','admManageRooms.action',null,null,null)">Manage Rooms</a>
							</li>
							 
							<li><a href="#" onclick="getAjaxCall(null,null,$('#item4Tab a'),'GET','admManageUsers.action',null,null,null)">Manage Users</a>
							</li>
							<li><a href="#" onclick="getAjaxCall(null,null,$('#item4Tab a'),'GET','admManageUserAccounts.action',null,null,null)">Manage User Accounts</a>
							</li>
						</ul></li>
					<li id="item5Tab"><a class="MenuBarItemSubmenu hms-menu" href="howTo">How to?</a>
						<ul>
							<li><a href="#" onclick="getAjaxCall(null,null,$('#item5Tab a'),'GET','howToRegisterNewPatient.action',null,null,null)">How to Register a
									New Patient</a>
							</li>
							<li><a href="#" onclick="getAjaxCall(null,null,$('#item5Tab a'),'GET','howToSearchForPatientRecord.action',null,null,null)">How to open an
									existing Patient Record</a>
							<li><a href="#" onclick="getAjaxCall(null,null,$('#item5Tab a'),'GET','howToEnterConsultationDetails.action',null,null,null)">How to Enter
									Consultation details</a>
							</li>
						</ul></li>
				</ul></td>
		</tr>
	</tbody>
</table>
</div>
<div id="container"></div>
<script type="text/javascript">
var loaderhtml = '<div id="circularG" style="display: block;"><div id="circularG_1" class="circularG"></div><div id="circularG_2" class="circularG"></div><div id="circularG_3" class="circularG"></div><div id="circularG_4" class="circularG"></div><div id="circularG_5" class="circularG"></div><div id="circularG_6" class="circularG"></div><div id="circularG_7" class="circularG"></div><div id="circularG_8" class="circularG"></div></div>';
    var tabErrorMessage = "<div class='tab-error-message'>Somthing wrong happend...</div>";
	var MenuBar1 = new Spry.Widget.MenuBar("Menubar1", {
		imgDown : "images/SpryMenuBarDownHover.gif",
		imgRight : "images/SpryMenuBarRightHover.gif"
	});
</script>