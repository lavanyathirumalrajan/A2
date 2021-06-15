package com.drug.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.drug.dao.OwnerDao;
import com.drug.model.OwnerModel;
import com.drug.model.testerModel;

@Controller
public class TesterController {
	@Autowired
	private OwnerDao dao;

	@RequestMapping(value = "/testerInfo/testerView/{testername}/{username}", method = RequestMethod.GET)
	public ModelAndView tester(@PathVariable("testername") String testername,
			@PathVariable("username") String username) {
		ModelAndView model = new ModelAndView();
		List<testerModel> tester = dao.getTester(testername);
		List<testerModel> list = dao.getTester();
		List<OwnerModel> owner = dao.findbyid(username);
		if (tester != null) {
			model.addObject("msg", tester);
			model.addObject("owner", owner);
			model.setViewName("testerslist");

		} else {
			model.addObject("msg1", list);
			model.setViewName("testerPage");
		}
		return model;
	}
	
	@RequestMapping(value = "/testerInfo/testerView/{testername}/accept/{username}/{testername}",method = RequestMethod.GET)

	public ModelAndView acceptRequest(@PathVariable("username") String username,
			@PathVariable("testername") String testername) {
		ModelAndView model = new ModelAndView();
		String status="Accepted";
		int count=dao.updateOwner(username, status);
		int counter=dao.updateTester(testername, status);
		
		if(count>0) {
			model.setViewName("Success");
			
		}
		return model;
	}
	
	
	@RequestMapping(value = "/testerInfo/testerView/{testername}/delete/{username}/{testername}",method = RequestMethod.GET)

	public ModelAndView deleteRequest(@PathVariable("username") String username,
			@PathVariable("testername") String testername) {
		ModelAndView model = new ModelAndView();
		String status="No action Taken";
		String status1="No action";
		int count=dao.updateOwner(username, status);
		int counter=dao.updateTester(testername, status1);
		
		if(count>0) {
			model.setViewName("Awesome");
			
		}
		return model;
	}

	
	
}
