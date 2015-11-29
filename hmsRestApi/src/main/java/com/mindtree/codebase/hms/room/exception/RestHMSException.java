package com.mindtree.codebase.hms.room.exception;

/**
 * Root exception for Leave Application System
 * 
 * @author Arun
 * 
 */
public class RestHMSException extends Exception {
	/**
	 * Serial version UID
	 */
	private static final long serialVersionUID = 5673688836437928114L;

	private RestHMSErrorCode errorCode;

	public RestHMSException() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RestHMSException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public RestHMSException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public RestHMSException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}

	public RestHMSException(RestHMSErrorCode errorCode2, String message, Throwable cause) {
		super(message, cause);
		this.errorCode = errorCode2;
	}

	public RestHMSException(RestHMSErrorCode errorCode2, String message) {
		super(message);
		this.errorCode = errorCode2;
	}

	public RestHMSException(RestHMSErrorCode errorCode2, Throwable cause) {
		super(cause);
		this.errorCode = errorCode2;
	}

	public RestHMSErrorCode getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(RestHMSErrorCode errorCode) {
		this.errorCode = errorCode;
	}
}

