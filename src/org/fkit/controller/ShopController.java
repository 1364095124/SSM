package org.fkit.controller;
import org.fkit.service.IndexService;
import org.fkit.test.Shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class ShopController {
	@Autowired
	@Qualifier("indexService")
	private IndexService indexService;
	
	@RequestMapping(value="/shop/usermore")
	public String usermore(  int shopid,@ModelAttribute Shop shop,Model model){
	
		Shop s=indexService.findShopById(shopid);
		model.addAttribute("shop",s);
		return "user/usermore";
	}
}