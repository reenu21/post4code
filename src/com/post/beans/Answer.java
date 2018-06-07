package com.post.beans;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.post.model.Account;

@Component("Answer")
public class Answer {
	private int aid;
	private String ans;
	private int qid;
	private String username;
	private Account account;
	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getAns() {
		return ans;
	}

	public void setAns(String ans) {
		this.ans = ans;
	}

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Autowired
	public void setAccount(Account account) {
		this.account = account;
	}
	
	public ArrayList<Answer> getAllAnswers(){
		ArrayList<Answer> ans_list=account.getAllAnswers();
		return ans_list;
	}

	public void insertAnswer(Answer a) {
		account.insertAnswer(a);
		
	}
	

}
