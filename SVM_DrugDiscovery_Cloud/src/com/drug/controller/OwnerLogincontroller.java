package com.drug.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.drug.dao.OwnerDao;
import com.drug.model.OwnerModel;

@Controller
public class OwnerLogincontroller {
	@Autowired
	OwnerDao dao;

	@RequestMapping(value = "/ownerLogin", method = RequestMethod.POST)

	public ModelAndView userLogin(@RequestParam("username") String username,
			@RequestParam("password") String password) {
		ModelAndView mv = new ModelAndView();
		OwnerModel model = new OwnerModel();
		model.setUsername(username);
		model.setPassword(password);
		String labcode = dao.ownerLogin(model);
		List<OwnerModel> owner=dao.findbyid(username);

		if (labcode != null) {
			mv.addObject("msg", username);
			mv.addObject("msg1", labcode);
			mv.addObject("owner", owner);

			mv.setViewName("formula");

		} else {
			mv.addObject("msg", "Username or Password incorrect");
			mv.setViewName("index");

		}

		return mv;
	}
	
	

}
