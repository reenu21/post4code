package com.post.beans;



import javax.validation.constraints.Size;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.post.model.Account;

@Component("Feedback")
public class Feedback {
	private int fid;
	private String username;
	
	@Size(min = 4, max = 10, message = "City should be between 4 to 10 character")
	private String content;
	private String date;
    private Account account;  
	
	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	public void insertFeedBack(Feedback f) {
		account.insertFeedBack(f);
	}

	@Autowired
	public void setAccount(Account account) {
		this.account = account;
	}
	
	
}
