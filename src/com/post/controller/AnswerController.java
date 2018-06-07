package com.post.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.post.beans.Answer;

@Controller
public class AnswerController {
	private Answer answer;
	
	@RequestMapping(value="/postAnswer")
	public String postAnswer(@RequestParam("id") String id,@RequestParam("q") String ques,Model model) {
		model.addAttribute("id", id);
		model.addAttribute("ques", ques);
		return "postanswer";
	}
	
	@RequestMapping(value="/submitAnswer",method=RequestMethod.POST)
	public String submitAnswer(Model model,Answer a) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    a.setUsername(auth.getName()); 
	    //go to database
	   answer.insertAnswer(a);
		
		model.addAttribute("msg", "Thank You for Answering");
		System.out.println(a.getQid());
		return "redirect:/";
	}

	@Autowired
	public void setAnswer(Answer answer) {
		this.answer = answer;
	}

}
