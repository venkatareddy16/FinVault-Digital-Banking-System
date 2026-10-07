package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.Users;
import com.utility.DBConnection;

public class UserOperations implements UserInfo {
	boolean status = false;
	Connection con = null;
	PreparedStatement ps = null;

	@Override
	public boolean registerUser(Users u) {
		String query = "insert into users (username,password,full_name) values (?,?,?)";
		con = DBConnection.getConnection();
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getFull_name());
			int n = ps.executeUpdate();
			if (n > 0) {
				status = true;
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return status;
	}

	@Override
	public Users loginUser(String username, String password) {
		String query = "select * from users where username=? and password=?";
		con = DBConnection.getConnection();
		ResultSet rs = null;
		Users u=new Users();
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			while (rs.next()) { /* it only one time executes */
				u.setUser_id(rs.getInt("user_id"));
				u.setUsername(rs.getString("username"));
				u.setPassword(rs.getString("password"));
				u.setFull_name(rs.getString("full_name"));
				u.setRole(rs.getString("role"));
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return u;
	}

	@Override
	public Users getUserById(int userId) {
		String query = "select * from users where user_id=?";
		con = DBConnection.getConnection();
		ResultSet rs = null;
		Users u = new Users();
		try {
			ps = con.prepareStatement(query);
			ps.setInt(1, userId);
			rs = ps.executeQuery();
			while (rs.next()) { /* it only one time executes */
				u.setUser_id(rs.getInt("user_id"));
				u.setUsername(rs.getString("username"));
				u.setPassword(rs.getString("password"));
				u.setFull_name(rs.getString("full_name"));
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return u;
	}

	@Override
	public List<Users> getAllUsers(String role) {
		String query = "select * from users where role=?";
		con = DBConnection.getConnection();
		ResultSet rs = null;
		List<Users> list=new ArrayList<>();
		try {
			ps = con.prepareStatement(query);
			ps.setString(1,role);
			rs = ps.executeQuery();
			while (rs.next()) { /* it only one time executes */
				Users u = new Users();
				u.setUser_id(rs.getInt("user_id"));
				u.setUsername(rs.getString("username"));
				u.setPassword(rs.getString("password"));
				u.setFull_name(rs.getString("full_name"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return list; 
	}

	@Override
	public boolean updateUserById(int userId, Users u) {
		String query = "update users set username=?,password=?,full_name=? where user_id=?";
		con = DBConnection.getConnection();
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getFull_name());
			ps.setInt(4,userId);
			int n = ps.executeUpdate();
			if (n > 0) {
				status = true;
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return status;
	}

	@Override
	public boolean deleteUserById(int userId) {
		String query = "delete from users where user_id=?";
		con = DBConnection.getConnection();
		try {
			ps = con.prepareStatement(query);
			ps.setInt(1,userId);
			int n = ps.executeUpdate();
			if (n > 0) {
				status = true;
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return status;
	}

	

}
