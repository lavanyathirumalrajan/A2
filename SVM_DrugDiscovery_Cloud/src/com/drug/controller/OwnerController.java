package com.drug.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.drug.dao.OwnerDao;
import com.drug.model.FormulaFile;
import com.drug.model.OwnerModel;
import com.drug.model.Traineddata;
import com.drug.model.testerModel;

@Controller
public class OwnerController {
	@Autowired
	private OwnerDao dao;

	@RequestMapping(value = "/findUser/{username}", method = RequestMethod.GET)
	public ModelAndView listUser(@PathVariable("username") String username) {
		OwnerModel owner = new OwnerModel();
		ModelAndView model = new ModelAndView();
		List<OwnerModel> list = dao.findbyid(username);
		if (list != null) {
			model.addObject("msg", list);
			model.setViewName("ownerdetails");

		} else {
			model.addObject("msg", "failed");
			model.setViewName("formula");

		}

		System.out.println("-------" + username);
		return model;

	}

	@RequestMapping(value = "/findFile/{username}", method = RequestMethod.GET)
	public ModelAndView listfile(ModelAndView model, @PathVariable("username") String username) {
		FormulaFile file = new FormulaFile();
		List<Traineddata> fileList = dao.finddata(username);
		for (Traineddata formulaFile : fileList) {
			System.out.println(formulaFile.getDrugname());

		}
		if (fileList != null) {
			model.addObject("msg", fileList);
			model.setViewName("druglist");

		} else {
			model.addObject("msg", "failed");
			model.setViewName("formula");

		}

		return model;

	}

	@RequestMapping(value = "changePassword", method = RequestMethod.POST)
	public ModelAndView password(ModelAndView model, @RequestParam("username") String username,
			@RequestParam("opassword") String oldpassword, @RequestParam("npassword") String newpassword) {
		OwnerModel owner = new OwnerModel();
		owner.setPassword(newpassword);
		owner.setUsername(username);

		int count = dao.updatePassword(owner);
		if (count > 0) {
			model.addObject("msg", "success");
			model.setViewName("formula");

		} else {
			model.addObject("msg", "failed");
			model.setViewName("changepassword");

		}

		return model;
	}

	@RequestMapping(value = "updateAllUser", method = RequestMethod.GET)
	public ModelAndView AlluserUpdate(ModelAndView model, @RequestParam("fname") String name,
			@RequestParam("email") String email, @RequestParam("password") String password,
			@RequestParam("phone") String phone, @RequestParam("labname") String labname,
			@RequestParam("labcode") String labcode, @RequestParam("username") String username) {
		OwnerModel owner = new OwnerModel();
		owner.setName(name);
		owner.setEmail(email);
		owner.setPassword(password);
		owner.setPhone(phone);
		owner.setLabname(labname);
		owner.setLabcode(labcode);
		owner.setUsername(username);
		int count = dao.updateUser(owner);
		if (count > 0) {
			model.addObject("msg", "success");
			model.setViewName("formula");

		} else {
			model.addObject("msg", "failed");
			model.setViewName("ownerdetails");

		}

		return model;
	}

	@RequestMapping(value = "/testerDetails", method = RequestMethod.GET)
	public ModelAndView getTester(ModelAndView model) {
		testerModel test = new testerModel();
		List<testerModel> testlist = dao.getTester();
		if (testlist != null) {
			model.addObject("msg", testlist);
			model.setViewName("testerPage");
		} else {

		}
		return model;
	}

	@RequestMapping(value = "/testerInfo/{username}",method = RequestMethod.GET)
	public ModelAndView tester(@PathVariable("username") String username) {
		ModelAndView model = new ModelAndView();
		System.out.println("-----------"+username);
		List<OwnerModel> owner=dao.findbyid(username);
		if(!owner.isEmpty()) {
			model.addObject("owner", owner);
			model.setViewName("testerPage");
		}
		return model;

	}

}
