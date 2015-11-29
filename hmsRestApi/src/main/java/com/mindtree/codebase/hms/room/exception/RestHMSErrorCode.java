package com.mindtree.codebase.hms.room.exception;

public enum RestHMSErrorCode {
	MISCELLANEOUS("miscellaneous"), DATA_ACCESS_EXCEPTION(
			"Data Access Exception"), ERROR_FETCHING_USER_DETAILS(
			"Error fetching user details"), USER_RECORD_NOT_FOUND(
			"No matching user record found"), DATA_ACCESS_EXCEPTION_CREATE(
			"Error creating Entity"), DATA_ACCESS_EXCEPTION_UPDATE(
			"Error creating Entity"), DATA_ACCESS_EXCEPTION_GET_ALL(
			"Error getting all records of entity"), DATA_ACCESS_EXCEPTION_GET_PK(
			"Error getting records based on primary key"), DATA_ACCESS_EXCEPTION_DELETE(
			"Error deleting record in data store"), ERROR_FETCHING_LEAVE_APPLICATIONS_FOR_APPLICANT(
			"Error fetching leave applications for applicant"), ERROR_FETCHING_LEAVE_APPLICATIONS_FOR_BRANCH(
			"Error fetching leave applications for given branch"), ERROR_FETCHING_USERS_IN_BRANCH(
			"Error fetching users in branch"), RULE_VALIDATION_FAILURE(
			"Error in business rule"), ERROR_FETCHING_MAX_HOSPITAL_NUMBER(
			"Error fetching max hospital number"), ERROR_FETCHING_MAX_BILL_NUMBER(
			"Error fetching max bill number)"), ERROR_FETCHING_VISITS_BY_SERVICE(
			"Error fetching visits by service");

	private String code;

	private RestHMSErrorCode(String code) {
		setCode(code);
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}


}
