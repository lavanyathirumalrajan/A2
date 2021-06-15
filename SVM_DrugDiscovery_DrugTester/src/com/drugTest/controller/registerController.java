package com.drugTest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.drugTest.dao.testerDao;
import com.drugTest.model.testerModel;

@Controller
public class registerController {
	@Autowired
	testerDao dao;

	@RequestMapping(value = "/testerRegister", method = RequestMethod.POST)

	public ModelAndView Registration(@RequestParam("name") String name, @RequestParam("email") String email,
			@RequestParam("username") String username, @RequestParam("password") String password,
			@RequestParam("phone") String phone) {
		ModelAndView mv = new ModelAndView();
		testerModel model = new testerModel();
		String status="No action";
		String ownername="Null";
		model.setName(name);
		model.setEmail(email);
		model.setUsername(username);
		model.setPassword(password);
		model.setPhone(phone);
		model.setStatus(status);
		model.setOwnername(ownername);
		
		int counter = dao.testerRegistration(model);
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
