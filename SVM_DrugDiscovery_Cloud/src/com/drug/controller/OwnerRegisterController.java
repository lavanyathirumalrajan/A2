package com.drug.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.drug.dao.OwnerDao;
import com.drug.model.OwnerModel;

@Controller
public class OwnerRegisterController {
	@Autowired
	OwnerDao dao;

	@RequestMapping(value = "/ownerRegister", method = RequestMethod.POST)

	public ModelAndView Registration(@RequestParam("fname") String name, @RequestParam("email") String email,
			@RequestParam("username") String username, @RequestParam("password") String password,
			@RequestParam("phone") String phone, @RequestParam("labname") String labname,
			@RequestParam("labcode") String labcode) {
		ModelAndView mv = new ModelAndView();
		OwnerModel model = new OwnerModel();
		String status="No action Taken";
		 String testername="Null";

		model.setName(name);
		model.setEmail(email);
		model.setUsername(username);
		model.setPassword(password);
		model.setPhone(phone);
		model.setLabname(labname);
		model.setLabcode(labcode);
		model.setStatus(status);
		model.setTestername(testername);

		int counter = dao.ownerRegister(model);
		System.out.println("counter " + counter);
		if (counter > 0) {
			mv.addObject("msg", "Registration Successfull");
			mv.setViewName("index");
		} else {
			mv.addObject("msg", "Registration failed");
			mv.setViewName("index");

		}

		return mv;

	}

}
