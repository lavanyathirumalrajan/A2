package com.gts.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gts.dao.AdminDao;
import com.gts.model.Traineddata;

@Controller
public class AdminController {
	@Autowired
	private AdminDao dao;
	@RequestMapping(value = "/adminlogin",method = RequestMethod.POST)
	public ModelAndView admin(ModelAndView model, @RequestParam("username") String username,
			@RequestParam("password") String password) {
		System.out.println("====="+username+"====="+password);
		if(username.equalsIgnoreCase("admin")&&password.equalsIgnoreCase("admin")) {
			List<Traineddata> list=dao.getAlldata();
			model.addObject("msg", list);
			model.setViewName("dashboard");
		}else {
			model.setViewName("index");;
		}
		return model;

	}
	@RequestMapping(value = "/accept/{drugname}",method = RequestMethod.GET)
	public ModelAndView OK(ModelAndView model,@PathVariable("drugname")String drugname) {
		String status="Accepted";
		int result=dao.accept(drugname, status);
		int ok=dao.ok(drugname, status);
		model.setViewName("dashboard");
		return model;
		
	}
	@RequestMapping(value = "/decline/{drugname}",method = RequestMethod.GET)
	public ModelAndView NO(ModelAndView model,@PathVariable("drugname")String drugname) {
		String status="Decliened";
		int result=dao.decline(drugname, status);
		int notok=dao.notok(drugname, status);
		model.setViewName("dashboard");
		return model;
		
	}

}
