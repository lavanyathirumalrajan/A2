package com.gts.model;

public class Traineddata {
	private int id;
	private String username;
	private String drugname;
	private String filename;
	private String accuracy_nb;
	private String accuracy_svm;
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
	
	public String getAccuracy_nb() {
		return accuracy_nb;
	}
	public void setAccuracy_nb(String accuracy_nb) {
		this.accuracy_nb = accuracy_nb;
	}
	
	public String getAccuracy_svm() {
		return accuracy_svm;
	}
	public void setAccuracy_svm(String accuracy_svm) {
		this.accuracy_svm = accuracy_svm;
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
