package com.billiard.entity;

public class JobResponse {
	private int code=200 ;
	private String message;
	private Object result;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Object getResult() {
		return result;
	}
	public void setResult(Object result) {
		this.result = result;
	}
	public JobResponse() {
		super();
	}
	public JobResponse(int code, String message) {
		super();
		this.code = code;
		this.message = message;
	}
	
	public static JobResponse successResponse() {
		return new JobResponse();
	}
	
	public static JobResponse successResponse(Object result) {
		JobResponse jobResponse = new JobResponse();
		jobResponse.setResult(result);
		return jobResponse;
	}
	
	public static JobResponse errorResponse(int code, String message) {
		return new JobResponse(code,message);
	}
}
