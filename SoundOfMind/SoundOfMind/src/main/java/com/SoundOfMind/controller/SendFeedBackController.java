package com.SoundOfMind.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SendFeedBackController {

	
	@GetMapping("/sendFeedback.do")
	public String sendFeedback() {
		return "sendfeedback";
	}
}
