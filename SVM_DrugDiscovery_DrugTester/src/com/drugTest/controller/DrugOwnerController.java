package com.drugTest.controller;

import java.io.InputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.drugTest.dao.testerDao;
import com.drugTest.model.FormulaFile;
import com.drugTest.model.OwnerModel;
import com.drugTest.model.Requestmodel;
import com.drugTest.model.Traineddata;

@Controller
public class DrugOwnerController {
	@Autowired
	private testerDao dao;

	@RequestMapping(value = "/ownerDetails/{username}/{username1}/{status}", method = RequestMethod.GET)
	public ModelAndView owner(@PathVariable("username") String username, @PathVariable("username1") String username1,
			@PathVariable("status") String status) {

		ModelAndView model = new ModelAndView();
		List<OwnerModel> owner = dao.getOwnerList(username);
		List<OwnerModel> list = dao.getOwnerList();
		if (owner != null) {
			model.addObject("msg", owner);
			model.addObject("username", username1);
			model.addObject("status", status);
			model.setViewName("ownerDetails");
		} else {
			model.addObject("msg1", list);
			model.setViewName("ownerPage");
		}
		return model;
	}

	@RequestMapping(value = "/fileDetails/{username}/{status}", method = RequestMethod.GET)
	public ModelAndView file(@PathVariable("username") String username, @PathVariable("status") String status) {
		ModelAndView model = new ModelAndView();
		OwnerModel owner = new OwnerModel();
		owner.setUsername(username);
		owner.setTestername(status);

		String result = dao.testerstatus(owner);

		System.out.println("----result----" + result);

		List<FormulaFile> file = dao.getFileList(username);
		List<OwnerModel> list = dao.getOwnerList();
		if (file != null) {
			model.addObject("msg", file);
			model.addObject("result", result);
			model.setViewName("fileDetails");
		} else {
			model.addObject("msg1", list);
			model.setViewName("ownerPage");
		}
		return model;
	}

	@RequestMapping(value = "ownerDetails/{username}/{username1}/request/{username1}/{username}", method = RequestMethod.GET)
	public ModelAndView request(@PathVariable("username1") String testername,
			@PathVariable("username") String username) {
		ModelAndView model = new ModelAndView();
		String status = "Request pending";

		Requestmodel request = new Requestmodel();
		request.setUsername(username);
		request.setTestername(testername);
		request.setStatus(status);

//		OwnerModel owner=new OwnerModel();
//		owner.setUsername(username);
//		owner.setStatus(status);
//		owner.setTestername(testername);

		int result = dao.uodateStatus(username, status, testername);
		int count = dao.updateStatus(testername, status);

		System.out.println("------------------" + count);

		int counter = dao.saveRequest(request);
		if (count > 0) {
			model.addObject("msg", "success");
			model.setViewName("Success");

		} else {
			model.addObject("msg", "failed");
			model.setViewName("ownerPage");

		}

		return model;
	}

	@RequestMapping(value = "fileDetails/{username}/testFile/{username}/{drugname}", method = RequestMethod.GET)
	public ModelAndView testing(ModelAndView model, @PathVariable("drugname") String drugname,
			@PathVariable("username") String username) {
		String status="checked";
		String statuss="Active";
		
		List<Traineddata> dataList=dao.getDataList(username);
		List<FormulaFile> fileList=dao.getFileList(drugname);
		for (FormulaFile formulaFile : fileList) {		
		for (Traineddata traineddata : dataList) {
			String dnb=formulaFile.getTrain_nb();
			String tnb=traineddata.getTrain_NB();
			
			String dvm=formulaFile.getTrain_svm();
			String tvm=traineddata.getTrain_SVM();
			if(dataList.isEmpty()) {
				model.addObject("msg","Cannot Find the Data");
				model.setViewName("fileDetails");
				
			}else if (dnb!=null || dvm!=null || tnb!=null || tvm!=null) {
				
			
			
			
			
			
			
				
				int result=dao.formulaStatus(drugname, status);
				int count=dao.dataStatus(drugname, statuss);
				System.out.println("------------------------");
				
				model.addObject("msg","success");
				model.setViewName("checked");
				
			} 
				
			}
			
		}
		
		
		
		
		
		
		return model;

	}

}
