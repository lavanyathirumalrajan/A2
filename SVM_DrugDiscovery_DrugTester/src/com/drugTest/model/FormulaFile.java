package com.drugTest.model;

public class FormulaFile {
	private int id;
	private String username;
	private String labcode;
	private String drugname;
	private String drugid;
	private String date;
	private String filename;
	private String file;
	private String filetype;
	private String train_svm;
	private String train_nb;
	private String status;

	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getTrain_svm() {
		return train_svm;
	}


	public void setTrain_svm(String train_svm) {
		this.train_svm = train_svm;
	}


	public String getTrain_nb() {
		return train_nb;
	}


	public void setTrain_nb(String train_nb) {
		this.train_nb = train_nb;
	}



	public FormulaFile() {

	}
	

	public String getDrugid() {
		return drugid;
	}


	public void setDrugid(String drugid) {
		this.drugid = drugid;
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

	public String getLabcode() {
		return labcode;
	}

	public void setLabcode(String labcode) {
		this.labcode = labcode;
	}

	public String getDrugname() {
		return drugname;
	}

	public void setDrugname(String drugname) {
		this.drugname = drugname;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public String getFiletype() {
		return filetype;
	}

	public void setFiletype(String filetype) {
		this.filetype = filetype;
	}

}
