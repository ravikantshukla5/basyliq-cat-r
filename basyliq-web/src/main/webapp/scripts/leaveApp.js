var xhr;
var selectedMenuItem;
function callAction(action, menubar) {
	selectedMenuItem = document.getElementById(menubar);
	$.get(action, changeStateList,"html");
}
function changeStateList(data) {
	document.getElementById("contents").innerHTML = data;
	MenuBar1.hideSubmenu(selectedMenuItem);
	selectedMenuItem = null;
	$("#endDate").datepicker();
	$("#startDate").datepicker();
}

