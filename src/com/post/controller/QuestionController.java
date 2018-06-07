package com.post.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.post.beans.Question;
import com.post.model.Account;

@Controller
public class QuestionController {
	
	private Question question;

	public Account account;
	@RequestMapping("/showQuestions")
	public String showQuestion(@RequestParam("id") String id,Model model) {
		model.addAttribute("id", id);
		return "question";
	}
	
	@RequestMapping("/postQuestion")
	public String postQuestion() {
		return "postquestion";
	}
	
	@RequestMapping("/submitQuestion")
	public String submitQuestion(Question q) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		q.setUsername(auth.getName());
		 DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
         Date d=new Date();
         String s=dateFormat.format(d);
         q.setQues_date(s);
		System.out.println(q.getCid()+" "+q.getQues()+" "+q.getUsername());
		question.insertQuestion(q);
		return "redirect:/";
	}

	@Autowired
	public void setAccount(Account account) {
		this.account = account;
	}

	@Autowired
	public void setQuestion(Question question) {
		this.question = question;
	}
	
	
}
