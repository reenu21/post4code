package com.post.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyDetailsController {

	
	@RequestMapping("/myQuestions")
	public String myQuestions(Model model) {
		String name=SecurityContextHolder.getContext().getAuthentication().getName();
		model.addAttribute("name", name);
		model.addAttribute("t", "Questions");
		return "my_details";
	}
	
	@RequestMapping("/myAnswers")
	public String myAnswers(Model model) {
		String name=SecurityContextHolder.getContext().getAuthentication().getName();
		model.addAttribute("name", name);
		model.addAttribute("t", "Answers");
		return "my_details";
	}
}
