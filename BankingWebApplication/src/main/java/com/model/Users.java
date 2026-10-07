package com.model;

public class Users {
	private int user_id;
	private String username;
	private String password;
	private String full_name;
	private String role;
	
	public Users() {
		
	}
	
	
	public Users(int user_id, String username, String password, String full_name, String role) {
		super();
		this.user_id = user_id;
		this.username = username;
		this.password = password;
		this.full_name = full_name;
		this.role = role;
	}


	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getFull_name() {
		return full_name;
	}
	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}


	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}


	@Override
	public String toString() {
		return "Users [user_id=" + user_id + ", username=" + username + ", password=" + password + ", full_name="
				+ full_name + ", role=" + role + "]";
	}
	
	

}
