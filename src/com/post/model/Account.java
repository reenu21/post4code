package com.post.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.post.beans.Answer;
import com.post.beans.Category;
import com.post.beans.Feedback;
import com.post.beans.Question;
import com.post.beans.Users;

@Component
public class Account {
	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		jdbc = new NamedParameterJdbcTemplate(dataSource);
	}

	public ArrayList<Category> getAllCategory() {
		return (ArrayList<Category>)jdbc.query("select * from category", new RowMapper<Category>() {

			@Override
			public Category mapRow(ResultSet rs, int arg1) throws SQLException {
				Category c=new Category();
				c.setCid(rs.getInt("cid"));
				c.setCname(rs.getString("cname"));
				return c;
			}
			
		});
		
	}
	
	public ArrayList<Question> getAllQuestions() {
		return (ArrayList<Question>)jdbc.query("select * from  question order by ques_date desc", new RowMapper<Question>() {

			@Override
			public Question mapRow(ResultSet rs, int arg1) throws SQLException {
				Question q=new Question();
				q.setCid(rs.getInt("cid"));
				q.setQid(rs.getInt("qid"));
				q.setQues(rs.getString("ques"));
				q.setUsername(rs.getString("username"));
				q.setQues_date(rs.getString("ques_date"));
				return q;
			}
			
		});
		
	}

	public ArrayList<Answer> getAllAnswers() {
		return (ArrayList<Answer>)jdbc.query("select * from answer", new RowMapper<Answer>() {

			@Override
			public Answer mapRow(ResultSet rs, int arg1) throws SQLException {
				Answer a=new Answer();
				a.setAid(rs.getInt("aid"));
				a.setAns(rs.getString("ans"));
				a.setQid(rs.getInt("qid"));
				a.setUsername(rs.getString("username"));
				return a;
			}
			
		});
		
	}
	
	public ArrayList<Users> getAllUsers() {
		return (ArrayList<Users>)jdbc.query("select * from users", new RowMapper<Users>() {

			@Override
			public Users mapRow(ResultSet rs, int arg1) throws SQLException {
				Users u=new Users();
				u.setName(rs.getString("name"));
				u.setUsername(rs.getString("username"));
				return u;
			}
			
		});
		
	}

	public void insertAnswer(Answer a) {
		BeanPropertySqlParameterSource param=new BeanPropertySqlParameterSource(a);
		jdbc.update("insert into answer(ans,qid,username) values(:ans,:qid,:username)", param);
		System.out.println(a.getAns());
		
	}

	public void insertFeedBack(Feedback f) {
		
		// TODO Auto-generated method stub
		
	}

	

	//METHOD TO INSERT QUESTION IN DATABASE ASKED BY USER
	public void insertQuestion(Question q) {
		BeanPropertySqlParameterSource param=new BeanPropertySqlParameterSource(q);
		jdbc.update("insert into question(ques,cid,username,ques_date) values(:ques,:cid,:username,:ques_date)", param);
		
	}

	//METHOD TO INSERT NEW REGISTERED USER IN DATABASE 
	public void insertUser(Users u) {
		BeanPropertySqlParameterSource param=new BeanPropertySqlParameterSource(u);
		jdbc.update("insert into users(name,username,password,enabled) values(:name,:username,:password,:enabled)", param);
		jdbc.update("insert into authorities(username,authority) values(:username,:authority)", param);
	}

	
	//METHOD TO INSERT NEW CATEGORY IN DATABASE ADDED BY ADMIN
	public void insertNewCategory(Category c) {
		BeanPropertySqlParameterSource param=new BeanPropertySqlParameterSource(c);
		jdbc.update("insert into category(cname) values(:cname)", param);
		
	}

	
	
}
