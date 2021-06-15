package com.drug.dao;

import java.util.List;

import com.drug.model.Existing_ds;
import com.drug.model.FormulaFile;
import com.drug.model.OwnerModel;
import com.drug.model.Traineddata;
import com.drug.model.testerModel;

public interface OwnerDao {
	
	public int ownerRegister(OwnerModel model);
	public String ownerLogin(OwnerModel model);
	public int saveFile(FormulaFile file);
	public List<OwnerModel> findbyid(String username);
	public List<FormulaFile> findbyname(String username);
	public List<FormulaFile> getFile();

	public List<Traineddata> finddata(String username);
	public int updatePassword(OwnerModel owner);
	public int updateUser(OwnerModel model);
	public List<testerModel> getTester();
	public int delete(String drugname);
	public List<testerModel> getTester(String username);
	
	public int updateOwner(String username,String status);
	public int updateTester(String username,String status);
	public int saveTrainedDate(Traineddata data);
	public int saveDs(Existing_ds ds);
	public List<Existing_ds> getDs();


}
