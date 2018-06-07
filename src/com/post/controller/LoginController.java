package com.post.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.post.beans.Users;

@Controller
public class LoginController {

	private Users user;
	
	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}
	
	@RequestMapping("/logout")
	public String showLogout(HttpSession session) {
		return "redirect:/login";
	}
	
	@RequestMapping(value="/sign-up",method=RequestMethod.POST)
	public String RegisterUser(Users u,Model model) {
		ArrayList<Users> user_list=user.getAllUsers();
		boolean ans=u.isUsernameUnique(u,user_list);
		if(ans) {
			//Before inserting in database set enable and authority
			u.setEnabled("true");
			u.setAuthority("user");
			System.out.println(u.getPassword());
			user.insertUser(u);
			model.addAttribute("successmsg", "You have Registered Successfully,Please Login");
			return "login";
		}
		else {
			model.addAttribute("failmsg", "Username already Exists");
			return "login";
		}
		
	}

	@Autowired
	public void setUser(Users user) {
		this.user = user;
	}
	
	
}
