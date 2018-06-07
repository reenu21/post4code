package com.post.beans;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.post.model.Account;

@Component("Users")
public class Users {

	private String username;
	private String name;
	private String password;
	private String enabled;
	private String authority;
	private Account account;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEnabled() {
		return enabled;
	}

	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
	

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	@Autowired
	public void setAccount(Account account) {
		this.account = account;
	}

	public ArrayList<Users> getAllUsers() {
		ArrayList<Users> users_list = account.getAllUsers();
		return users_list;
	}

	public void insertUser(Users u) {
		account.insertUser(u);
	}

	public boolean isUsernameUnique(Users u, ArrayList<Users> user_list) {
		for (Users u1 : user_list) {
			if (u1.getUsername().equals(u.getUsername()))
				return false;
		}
		return true;
	}

}
