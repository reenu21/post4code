package com.post.beans;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.post.model.Account;

@Component("Question")
public class Question {
	private int qid;
	private String ques;
	private int cid;
	private String username;
	private String ques_date;
	private Account account;
	
	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public String getQues() {
		return ques;
	}

	public void setQues(String ques) {
		this.ques = ques;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getQues_date() {
		return ques_date;
	}

	public void setQues_date(String ques_date) {
		this.ques_date = ques_date;
	}

	@Autowired
	public void setAccount(Account account) {
		this.account = account;
	}

	public ArrayList<Question> getAllQuestions() {
		ArrayList<Question> ques_list=account.getAllQuestions();
		return ques_list;
	}

	public void insertQuestion(Question q) {
		account.insertQuestion(q);
	}
	
}
