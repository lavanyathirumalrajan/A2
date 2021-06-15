package com.gts.dao;

import java.util.List;

import com.gts.model.Traineddata;

public interface AdminDao {
	public List<Traineddata> getAlldata();
	public int accept(String drugname,String status);
	public int decline(String drugname,String status);
	public int ok(String drugname,String status);
	public int notok(String drugname,String status);


}
