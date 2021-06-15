package com.drugTest.model;

public class Traineddata {
	private int id;
	private String username;
	private String drugname;
	private String filename;
	private String Accuracy_NB;
	private String Accuracy_SVM;
	private String Train_SVM;
	private String Train_NB;
	private String status;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDrugname() {
		return drugname;
	}
	public void setDrugname(String drugname) {
		this.drugname = drugname;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getAccuracy_NB() {
		return Accuracy_NB;
	}
	public void setAccuracy_NB(String accuracy_NB) {
		Accuracy_NB = accuracy_NB;
	}
	public String getAccuracy_SVM() {
		return Accuracy_SVM;
	}
	public void setAccuracy_SVM(String accuracy_SVM) {
		Accuracy_SVM = accuracy_SVM;
	}
	public String getTrain_SVM() {
		return Train_SVM;
	}
	public void setTrain_SVM(String train_SVM) {
		Train_SVM = train_SVM;
	}
	public String getTrain_NB() {
		return Train_NB;
	}
	public void setTrain_NB(String train_NB) {
		Train_NB = train_NB;
	}

	

}
