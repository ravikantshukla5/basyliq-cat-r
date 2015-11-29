<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<style type="text/css" media="print">
@page {
	size: auto; /* auto is the initial value */
	margin: 0mm; /* this affects the margin in the printer settings */
}

body {
	background-color: #FFFFFF;
	/*border: solid 1px black ;*/
	margin: 0px 15px 0px 20px;
	/* this affects the margin on the content before sending to printer */
}
</style>
<script type="text/javascript">
	window.print();
</script>
</head>
<body style="font-size: 14px;">
	<div class="header">
		<p style="text-align: center; font-weight: bold; font-size: 125%">
			<b>KSAC Hospital</b><br /> <font style="font-weight: normal;font-size: 75%"> <b>300,
				19th Main, 5th Cross,6th Block, Koramangala, Bangalore - 560095 | 
				Phone:080 25525050</b></font>
		</p>
	</div>
	<hr style="border-style: solid;" />
	<div id="billingForm">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tbody>
				<tr>
					<td>
						<div id="visitDetails">
							<table width="100%" border="0" cellpadding="0">
								<tbody>
									<tr>
										<td width="25%" align="left">Hospital Number :</td>
										<td width="25%" align="left">${requestScope.billing.visit.patient.hospitalNumber
											}</td>
										<td width="25%" align="left">Patient Name :</td>
										<td width="25%" align="left">${requestScope.billing.visit.patient.firstName}&nbsp;${requestScope.billing.visit.patient.lastName}</td>
									</tr>
									<tr>
										<td width="25%" align="left">Visit Date :</td>
										<td width="25%" align="left">${requestScope.billing.visit.visitDate}</td>
										<td width="25%" align="left">Billing Date :</td>
										<td width="25%" align="left">${requestScope.billing.billDate}</td>
									</tr>
									<tr>
										<td width="25%" align="left">Total Amount :</td>
										<td width="25%" align="left">${requestScope.billing.visit.totalAmount}</td>
										<td width="25%" align="left">Discounted Amount :</td>
										<c:if
											test="${requestScope.billing.visit.discountedAmount == requestScope.billing.visit.totalAmount}">
											<td width="25%" align="left"></td>
										</c:if>
										<c:if
											test="${requestScope.billing.visit.discountedAmount != requestScope.billing.visit.totalAmount}">
										<td width="25%" align="left">${requestScope.billing.visit.discountedAmount}</td>
										</c:if>
									</tr>
								</tbody>
							</table>
						</div>
						<hr />
						<div id="serviceDetails">
							<b>Details of Services Availed</b><br />
							<table width="100%" border="0" cellpadding="6" cellspacing="1">
								<thead>
									<tr style="font-weight: bold">
										<td>Description</td>
										<td>Service Type</td>
										<td>Standard Rate</td>
										<td>Actual Rate</td>
										<td>Quantity</td>
										<td>Amount</td>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="service"
										items="${requestScope.billing.visit.servicesAvailed}">
										<tr>
											<td>${service.description}</td>
											<td>${service.type}</td>
											<td>${service.standardRate}</td>
											<td>${service.actualRate}</td>
											<td>${service.quantity}</td>
											<td>${service.amount}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div> <br />
						<div id="paymentDetails">
							<b>Details of Payment </b><br />
							<table width="100%" border="0" cellpadding="6" cellspacing="1">
								<thead>
									<tr style="font-weight: bold">
										<td width="25%">Receipt No</td>
										<td width="25%">Receipt Date</td>
										<td width="25%">Payment Mode</td>
										<td width="25%">Bill Amount</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>${requestScope.billing.billNumber}</td>
										<td>${requestScope.billing.billDate}</td>
										<td>${requestScope.billing.paymentMode}</td>
										<td>${requestScope.billing.billAmount}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</td>
				</tr>
				<tr>
					<td><br/>
					<br/>Signature<br/>(<c:set var="loggedInUser"
								value="${sessionScope['scopedTarget.hmsSession'].loggedInUser}" />
							<c:out value="${loggedInUser.name}" />)</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>