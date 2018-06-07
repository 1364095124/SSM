package org.fkit.controller;

import org.fkit.service.IndexService;
import org.fkit.test.Product;
import org.fkit.test.Owner;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {
	@Autowired
	@Qualifier("indexService")
	private IndexService indexService;
	
	@RequestMapping(value="/login")
	public ModelAndView list(@RequestParam("loginname") String loginname,
			@RequestParam("password") String password,HttpSession session,
			ModelAndView mv){
		Owner owner=indexService.login(loginname, password);
		if(owner!=null){
			session.setAttribute("owner_session", owner);
			mv.setViewName("redirect:/home");
		}
		else{
			mv.addObject("message","用户名或密码错误");
			mv.setViewName("forward:/loginForm");
		}
		return mv;
	}
	
	@RequestMapping(value="/product/product_list")
	public String product_list(HttpSession session,@ModelAttribute Product product,Model model){
			Owner owner=(Owner)session.getAttribute("owner_session");
			
			if(owner.getIs_admin()==1){
				List<Product> products=indexService.AdfindAllProduct();
				model.addAttribute("product_list",products);
			}
			else{
				List<Product> products=indexService.findAllProduct(owner.getStoreid());
				model.addAttribute("product_list",products);
			}
			
		return "/product/product_list";
	}
	
	@RequestMapping(value="/product/product_more")
	public ModelAndView product_more(@RequestParam("operation") String operation,
			@RequestParam(value="productid",required=false) Integer productid,ModelAndView mv){
		
		
		if(operation.equals("more")){
			Product product=indexService.findProductById(productid);
			mv.addObject("product",product);
			mv.addObject("flag","more");
		}
		
		else{
			Product product=new Product();
			mv.addObject("product",product);
			mv.addObject("flag","add");
			
		}
		mv.setViewName("/product/product_more");
		return mv;
	}
	
	@RequestMapping(value="/product/product_change")
	public ModelAndView product_change(@RequestParam("productid") Integer productid,ModelAndView mv){
		indexService.changeProduct(productid);
		mv.addObject("information","下架成功");
		mv.setViewName("redirect:/product/product_list");
		return mv;
	}
	
	@RequestMapping(value="/product/add_product")
	public ModelAndView add_product(@ModelAttribute Product product,ModelAndView mv){
		indexService.insertProduct(product);
		mv.setViewName("redirect:/product/product_list");
		return mv;
	}
	
	@RequestMapping(value="/product/product_delete")
	public ModelAndView product_delete(@RequestParam("productid") int productid,ModelAndView mv){
		indexService.deleteProduct(productid);
		mv.addObject("information","删除成功");
		mv.setViewName("redirect:/product/product_list");
		return mv;
	}
}
