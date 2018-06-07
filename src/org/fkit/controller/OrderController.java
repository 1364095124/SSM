package org.fkit.controller;

import org.fkit.test.Order;
import org.fkit.test.Product;
import org.fkit.test.Owner;
import org.fkit.service.IndexService;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderController {
			@Autowired
			@Qualifier("indexService")
			private IndexService indexService;
	
			@RequestMapping(value="/order/order_list")
			public String order_list(String flag,HttpSession session,Model model){
				Owner owner=(Owner)session.getAttribute("owner_session");
				if(owner.getIs_admin()==1){
					List<Order> orders=indexService.AdfindAllOrder();
					model.addAttribute("order_list",orders);
				}
				else{
					List<Order> orders=indexService.findAllOrder(owner.getStoreid());
					model.addAttribute("order_list",orders);
				}
				return "/order/order_list";
			}
			
			@RequestMapping(value="/order/order_new")
			public String order_new(String flag,HttpSession session,Model model){
				Owner owner=(Owner)session.getAttribute("owner_session");
				if(owner.getIs_admin()==1){
					List<Order> orders=indexService.AdfindAllOrder();
					model.addAttribute("order_list",orders);
				}
				else{
					List<Order> orders=indexService.findAllOrder(owner.getStoreid());
					model.addAttribute("order_list",orders);
				}
				return "/order/order_new";
			}
			
			@RequestMapping(value="/order/order_update")
			public String order_update(Model model,@RequestParam("orderid") String orderid){
				model.addAttribute("orderid",orderid);
				return "/order/order_update";
			}
			
			@RequestMapping(value="/order/order_updating")
			public ModelAndView order_updating(@RequestParam("orderid") String orderid,@RequestParam("delivery_date") String delivery_date,
					@RequestParam("express") String express,@RequestParam("expressid") int expressid,ModelAndView mv){
				indexService.updateOrder(delivery_date, expressid, express, orderid);
				mv.addObject("information","发货成功");
				
				mv.setViewName("redirect: /order/order_list");
				return mv;
			}
			
			@RequestMapping(value="/order/order_more")
			public ModelAndView order_more(@RequestParam("orderid") String orderid,ModelAndView mv){
				Order order=indexService.findOrderById(orderid);
				Product product=indexService.findProductById(order.getProductid());
				mv.addObject("order",order);
				mv.addObject("product",product);
				mv.setViewName("/order/order_more");
				return mv;
			}
			
}
