package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrLoginController {
	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}
}
