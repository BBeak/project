package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrHomeController {

	
	@RequestMapping("/home")
	public String showMain() {
		return "home";
	}
	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}
}
