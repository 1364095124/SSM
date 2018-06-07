package org.fkit.controller;

import org.fkit.service.IndexService;
import org.fkit.test.User;
import org.fkit.test.Shop;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller


public class UserController {
	@Autowired
	@Qualifier("indexService")
	private IndexService indexService;
	
	
	
	//@RequestMapping(value="login/action")
	//public String 
	
	@RequestMapping(value="/user/findUser")
	public String findUser(@ModelAttribute User user,Model model){
		List<User> users=indexService.findAllUser();
		model.addAttribute("users", users);
		return "findUser";
	}
	@RequestMapping(value="/getIndex")
	public String getIndex(){
		return "index";
	}
	@RequestMapping(value="/home")
	public String home(){
		return "home";
	}
	@RequestMapping(value="/user/index")
	public String index(){
		return "user/index";
	}
	
}
