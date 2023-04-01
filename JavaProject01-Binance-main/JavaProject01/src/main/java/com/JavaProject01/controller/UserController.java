package com.JavaProject01.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.JavaProject01.domain.User;
import com.JavaProject01.mapper.UserMapper;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	private UserMapper userMapper;

	@PostMapping("/register")
	public String register(User user) {
		userMapper.addUSER(user);
		return "redirect:/";
	}
	
	@PostMapping("/login")
	public String login(User user, HttpSession session) {
		userMapper.loginUSER(user);
		session.setAttribute("id", user.getId());
		return "redirect:/";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
