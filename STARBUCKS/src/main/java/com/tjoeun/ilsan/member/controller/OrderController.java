package com.tjoeun.ilsan.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tjoeun.ilsan.member.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	OrderService orderService;
	
	@RequestMapping(value = "/order/list", method = RequestMethod.GET)
	public String getOrderList(Model model) {
		
		model.addAttribute("orderList", orderService.getOrderList());
		
		return "order/list";
	}

}
