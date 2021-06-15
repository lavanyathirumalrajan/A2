package com.drugTest.model;

public class Requestmodel {
	private String testername;
	
	private String username;
	private String status;
		
	
	public Requestmodel() {
		
	}
	
	public String getTestername() {
		return testername;
	}

	public void setTestername(String testername) {
		this.testername = testername;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

}
