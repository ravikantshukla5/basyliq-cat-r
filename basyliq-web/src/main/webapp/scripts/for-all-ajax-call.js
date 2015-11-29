/* This is the general method that is used for all get ajax call*/
function getAjaxCall(keyValueObj1,keyValueObj2,styleObj,methodType,actionUrl,enableDatePickerParam1,enableDatePickerParam2,enableDatePickerParam3){
	var key1=null,key2=null,value1=null,value2=null;
	if(keyValueObj1 != null){
		var indexOfEqual = keyValueObj1.indexOf("=");
		key1 = keyValueObj1.substring(0,indexOfEqual);
		value1 = keyValueObj1.substring(indexOfEqual+1,keyValueObj1.length+1);
	}
	if(keyValueObj2 != null){
		var indexOfEqual = keyValueObj2.indexOf("=");
		key2 = keyValueObj2.substring(0,indexOfEqual);
		value2 = keyValueObj2.substring(indexOfEqual+1,keyValueObj2.length+1);
	}
	if(methodType == null){
		methodType = 'GET';
	}
	if (styleObj != null) {
		$('.hms-menu').removeClass('current');
		$(styleObj).addClass('current');
		$('.hms-tab').remove();
	}
	
	if ($("#generalDiv").size() > 0) {
		$("#generalDiv").show();
	}
	var dataJSon = {};
	if(key1 != null && key2 != null){
		dataJSon[key1] = value1;
		dataJSon[key2] = value2;
	}
	if(key1 != null && key2 == null){
		dataJSon[key1] = value1;
	}
	if(key1 == null && key2 != null){
		dataJSon[key2] = value2;
	}
	$.ajax({
		url : actionUrl,
		data : dataJSon,
		cache : false,
		type : methodType,
		beforeSend : function() {
			$('#container').empty();
			$('#container').append('<div id="generalDiv"></div>');
			$("#generalDiv").append(loaderhtml);
			$("#generalDiv").show();
			$('#circularG').show();
		},
		success : function(data) {
			$('#circularG').hide();
			$("#generalDiv").html(data);
			if(enableDatePickerParam1 != null)
			$('#'+enableDatePickerParam1).datepicker();
			if(enableDatePickerParam2 != null)
			$('#'+enableDatePickerParam2).datepicker();
			if(enableDatePickerParam3 != null)
			$('#'+enableDatePickerParam3).datepicker();
		},
		error : function(data) {
			$('#circularG').hide();
			$("#generalDiv").html(tabErrorMessage);
		}
	});
}
/* This is the general method that is used for all post ajax call*/
function postAjaxCall(formObj,methodType,actionUrl,enableDatePickerParam1,enableDatePickerParam2,enableDatePickerParam3){

	if(methodType == null){
		methodType = 'POST';
	}
	if (formObj != null) {
		$('.hms-menu').removeClass('current');
		$(formObj).addClass('current');
		$('.hms-tab').remove();
	}
	
	if ($("#generalDivPost").size() > 0) {
		$("#generalDivPost").show();
	}
	$.ajax({
		url : actionUrl,
		cache : false,
		data : getFormValues(formObj),
		type : methodType,
		beforeSend : function() {
			$('#container').empty();
			$('#container').append('<div id="generalDivPost"></div>');
			$("#generalDivPost").append(loaderhtml);
			$("#generalDivPost").show();
			$('#circularG').show();
		},
		success : function(data) {
			$('#circularG').hide();
			$("#generalDivPost").html(data);
			if(enableDatePickerParam1 != null)
			$('#'+enableDatePickerParam1).datepicker();
			if(enableDatePickerParam2 != null)
			$('#'+enableDatePickerParam2).datepicker();
			if(enableDatePickerParam3 != null)
			$('#'+enableDatePickerParam3).datepicker();
		},
		error : function(data) {
			$('#circularG').hide();
			$("#generalDivPost").html(tabErrorMessage);
		}
	});
}
/******************************************This Function general for all form input types including single select*****************************************************/
function getFormValues(formObj){
	
	 var values = {};
	 $.each($(formObj).serializeArray(), function(i, field) {
	     values[field.name] = field.value;
	 });
	 return values;
}
function getFormValuesForData(formObj){
	if($('#userAccountFormId select[multiple="multiple"]').val().length > 1){
		getFormValuesWithMultipleSelect(formObj);
	}
	else{
		getFormValues(formObj);
	}
}
/******************************************This Function general for all form input types including mutliple single select*****************************************************/
function getFormValuesWithMultipleSelect(formObj){
	 var values = {};
	 var multipleSelectValue = [];/*$('#userAccountFormId select[multiple="multiple"]').val();*/
	 var count = 0;
	 $.each($(formObj).serializeArray(), function(i, field) {
		 if(field.name == "roles"){
			multipleSelectValue[count] = field.value;
			count ++ ;
			values[field.name] = JSON.stringify(multipleSelectValue);
		 }
		 if(field.name == "_roles"){
				multipleSelectValue[count] = field.value;
				count ++ ;
				values[field.name] = JSON.stringify(multipleSelectValue);
			 }
		 else{
	       values[field.name] = field.value;
		 }
	 });
	 return values;
}
/************************************** Printing Recipt *****************************************/
function printReceipt() {
	window
			.open(
					"blgPrintReceipt.action?id="
							+ document.getElementById("id").value,
					"hmsPrint",
					"width=800,height=600,toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=yes,resizable=yes,copyhistory=no");
}