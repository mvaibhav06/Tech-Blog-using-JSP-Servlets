package com.tech.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.tech.blog.entities.User;

public class UserDao {
	
	private Connection con;
	
	public UserDao(Connection con) {
		this.con = con;
	}
	
	public int saveUser(User user) {
		
		int res = 0;
		
		try {
			
			String query = "insert into user(name,email,password,gender,about,reg_date) values(?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getGender());
			ps.setString(5, user.getAbout());
			ps.setTimestamp(6, user.getDateTime());
			
			res = ps.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}
}
