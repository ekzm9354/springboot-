package com.JavaProject01.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.JavaProject01.mapper.ApiMapper;

import jakarta.servlet.http.HttpSession;

@Controller
public class ApiController {

	@Autowired
	private ApiMapper apiMapper;

	@PostMapping("/insertApi")
	public String insertApi(String exchange, String api_key, String sec_key, HttpSession session) {
		if(exchange.equals("binance")) {
			apiMapper.addBinance((String) session.getAttribute("id"), api_key, sec_key);
		}
		return "redirect:/";
	}
	
	
}
