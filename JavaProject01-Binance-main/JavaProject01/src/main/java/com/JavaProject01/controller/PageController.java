package com.JavaProject01.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;



@Controller
public class PageController {
	
	@GetMapping("/")
	public String index()  {
		return "index";
	}
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	@GetMapping("/password")
	public String password() {
		return "password";
	}
	@GetMapping("/apis")
	public String api() {
		return "api";
	}
}
