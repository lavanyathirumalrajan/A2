package com.drugTest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.drugTest.dao.testerDao;
import com.drugTest.model.OwnerModel;
import com.drugTest.model.testerModel;

@Controller
public class loginController {
	@Autowired
	testerDao dao;

	@RequestMapping(value = "/testerLogin", method = RequestMethod.POST)
	public ModelAndView userLogin(@RequestParam("username") String username,
			@RequestParam("password") String password) {
		ModelAndView mv = new ModelAndView();
		testerModel model = new testerModel();

		model.setUsername(username);
		model.setPassword(password);
		String value = dao.testerLogin(model);
		List<OwnerModel> owner = dao.getOwnerList();
		List<testerModel> tester=dao.getTesterList(username);

		if (value != null) {
			mv.addObject("msg", "login successfull");
			mv.addObject("msg1", owner);
			mv.addObject("msg2", username);
			mv.addObject("tester", tester);
			mv.setViewName("ownerPage");
		} else {
			mv.addObject("msg", "login failed");
			mv.setViewName("login");
		}
		return mv;

	}

}
