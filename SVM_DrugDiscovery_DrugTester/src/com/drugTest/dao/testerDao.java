package com.drugTest.dao;

import java.util.List;

import com.drugTest.model.FormulaFile;
import com.drugTest.model.OwnerModel;
import com.drugTest.model.Requestmodel;
import com.drugTest.model.Traineddata;
import com.drugTest.model.testerModel;

public interface testerDao {
	public int testerRegistration(testerModel model);
	public String testerLogin(testerModel model);
	public List<OwnerModel> getOwnerList();
	
	public List<OwnerModel> getOwnerList(String username);
	public List<FormulaFile> getFileList(String username);
	public List<testerModel> getTesterList(String username);
	public List<Traineddata> getDataList(String drugname);
	
	public int saveRequest(Requestmodel model);
	
	public int uodateStatus(String username,String status,String ownername);
	
	public int updateStatus(String testername,String status );

	public int formulaStatus(String drugname,String status );
	public int dataStatus(String drugname,String statuss );

	public List<testerModel> getTester(String username);
	public String testerstatus(OwnerModel model);
	


	



}
