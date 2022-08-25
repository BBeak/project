package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrHomeController {

	
	@RequestMapping("/home/main")
	public String showMain() {
		return "home";
	}
	@RequestMapping("/")
	public String returntoHome() {
		return "redirect:home/main";
	}
}
