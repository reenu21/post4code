package com.post.beans;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.post.model.Account;

@Component("Category")
public class Category {

	private int cid;
	private String cname;
	private Account account;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	
	@Autowired
	public void setAccount(Account account) {
		this.account = account;
	}
	
	public ArrayList<Category> getAllCategory(){
		ArrayList<Category> cat_list=account.getAllCategory();
		return cat_list;
	}
	public void insertNewCategory(Category c) {
		account.insertNewCategory(c);
		
	}
}
