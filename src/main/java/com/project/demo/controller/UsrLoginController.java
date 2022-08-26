package com.project.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrLoginController {
	@RequestMapping("usr/login")
	public String showLogin() {
		return "usr/login/login";
	}
}
