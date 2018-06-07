package com.post.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.post.beans.Category;
import com.post.beans.Users;

@Controller
public class AdminController {
	private Users users;
	private Category category;
	
	@RequestMapping("/admin")
	public String showAdminArea(HttpSession session) {
		//go to account 
		ArrayList<Users> users_list=users.getAllUsers();
		session.setAttribute("users_list", users_list);
		return "admin_section";
		
	}
	
	@RequestMapping("/add-category")
	public String addCategory(Category c,Model model) {
		System.out.println(c.getCname());
		category.insertNewCategory(c);
		model.addAttribute("msg", "Category added successfully");
		return "redirect:/";
	}
	
	
	@Autowired
	public void setUser(Users users) {
		this.users = users;
	}

	@Autowired
	public void setCategory(Category category) {
		this.category = category;
	}
	

}
