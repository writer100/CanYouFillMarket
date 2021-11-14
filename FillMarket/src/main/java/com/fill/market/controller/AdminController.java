package com.fill.market.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("/admin/adminMain.do")
	public String adminMain() {
		
		return "admin/adminMain";
	}
	
}
