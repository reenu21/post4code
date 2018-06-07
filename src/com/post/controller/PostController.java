package com.post.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.post.beans.Answer;
import com.post.beans.Category;
import com.post.beans.Question;

@Controller
public class PostController {

	private Category category;
	private Question question;
	private Answer answer;
	
	@RequestMapping("/")
	public String showHome(Model model,HttpSession session) {
		//fetch all category
		ArrayList<Category> cat_list=category.getAllCategory();
		//fetch all questions 
		ArrayList<Question> ques_list=question.getAllQuestions();
		//fetch all answers
		ArrayList<Answer> ans_list=answer.getAllAnswers();
		session.setAttribute("cat_list", cat_list);
		session.setAttribute("ques_list", ques_list);
		session.setAttribute("ans_list", ans_list);
		
		return "index";
	}
	
	@RequestMapping("/home")
	public String showDashboard(Model model) {
		
		return "redirect:/";
	}
	
	
	@Autowired
	public void setCategory(Category category) {
		this.category = category;
	}

	@Autowired
	public void setQuestion(Question question) {
		this.question = question;
	}

	@Autowired
	public void setAnswer(Answer answer) {
		this.answer = answer;
	}
	
	
	
	
	
}
